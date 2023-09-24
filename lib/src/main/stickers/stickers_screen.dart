import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/data/id.dart';
import 'package:messenger_app/data/models/sticker.dart';
import 'package:messenger_app/data/repo/stickers_repo.dart';
import 'package:messenger_app/firebase/collections.dart';
import 'package:messenger_app/src/main/stickers/add_sticker_dialog.dart';
import 'package:messenger_app/src/main/stickers/stickers_bloc.dart';

/// Image file with path and name using [Record] instead of [Class]
typedef ImageFile = ({String path, String name});

/// Private state for [StickersFilesCubit]
typedef _StickersFilesState = AsyncState<List<ImageFile>, Object?>;

final _stickersFolderRef =
    FirebaseStorage.instance.ref().child(FirebaseFolders.stickers);

/// Cubit that loads the stickers files from Firebase storage.
@injectable
class StickersFilesCubit extends Cubit<_StickersFilesState> {
  StickersFilesCubit() : super(const _StickersFilesState.initial()) {
    run();
  }

  Future<void> run() async {
    emit(const _StickersFilesState.loading());
    try {
      final images = <ImageFile>[];
      final refList = await _stickersFolderRef.listAll();

      for (final item in refList.items) {
        images.add((path: await item.getDownloadURL(), name: item.name));
      }

      emit(_StickersFilesState.data(images));
    } catch (e, stackTrace) {
      emit(_StickersFilesState.error(e, stackTrace));
    }
  }
}

typedef UploadStickerFileState = AsyncStateDefault<ImageFile>;

@injectable
class UploadStickerFileCubit extends Cubit<UploadStickerFileState>
    with AsyncStateCubitMixin {
  UploadStickerFileCubit() : super(const UploadStickerFileState.initial());

  Future<void> run(XFile value) => handle(() async {
        final ref = _stickersFolderRef
            .child("${value.name}${DateTime.now().millisecondsSinceEpoch}");

        final uploadTask = await ref.putFile(
          File(value.path),
          SettableMetadata(contentType: 'image/png'),
        );

        final url = await uploadTask.ref.getDownloadURL();
        final name = uploadTask.metadata?.name ?? "";

        return (path: url, name: name);
      });
}

@injectable
class DeleteStickerCubit extends Cubit<AsyncStateDefault>
    with AsyncStateCubitMixin {
  @appImpl
  final StickersRepository _repository;

  DeleteStickerCubit(this._repository)
      : super(const AsyncStateDefault.initial());

  Future<void> run(Id id) => handle(() => _repository.delete(id));
}

/// This is the screen that shows the stickers settings only in [kDebugMode].
///
/// This code has not been tested or maintained.
@RoutePage()
class StickersScreen extends HookWidget {
  const StickersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stickers = context.watch<StickersCubit>().state;
    final l10n = AppLocalizations.of(context)!;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<StickersFilesCubit>()),
        BlocProvider(create: (_) => getIt.get<UploadStickerFileCubit>()),
        BlocProvider(create: (_) => getIt.get<DeleteStickerCubit>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.stickers),
        ),
        floatingActionButton:
            BlocBuilder<UploadStickerFileCubit, UploadStickerFileState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () async {
                final value = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                );
                if (value == null) return;
                if (!context.mounted) return;
                final cubit = context.read<UploadStickerFileCubit>();
                await cubit.run(value);
                cubit.state.whenOrNull(
                  data: (data) {
                    showDialog(
                      context: context,
                      builder: (context) => AddStickerDialog(data),
                    );
                  },
                  error: (error, stackTrace) {
                    context.showDefaultErrorSnackBar();
                  },
                );
              },
              child: state.maybeWhen(
                orElse: () => const Icon(Icons.add),
                loading: () => const SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          },
        ),
        body: stickers.maybeWhen(
          data: (stickers) => RefreshIndicator(
            onRefresh: context.read<StickersCubit>().run,
            child: BlocBuilder<StickersFilesCubit, _StickersFilesState>(
              builder: (context, state) => state.maybeWhen(
                data: (files) => ListView.builder(
                  itemCount: files.length,
                  itemBuilder: (context, index) {
                    final item = files[index];
                    final sticker = stickers.firstWhereOrNull(
                      (element) => element.path == item.path,
                    );
                    return _StickerListTile(item: item, sticker: sticker);
                  },
                ),
                error: DefaultErrorWidget.call(
                  context.read<StickersFilesCubit>().run,
                ),
                orElse: DefaultLoadingWidget.new,
              ),
            ),
          ),
          error: DefaultErrorWidget.call(context.read<StickersCubit>().run),
          orElse: DefaultLoadingWidget.new,
        ),
      ),
    );
  }
}

class _StickerListTile extends StatelessWidget {
  final ImageFile item;
  final Sticker? sticker;

  const _StickerListTile({
    required this.item,
    this.sticker,
  });

  @override
  Widget build(BuildContext context) {
    final Sticker? sticker = this.sticker;
    return ListTile(
      leading: SizedBox.square(
        dimension: 56,
        child: Image.network(item.path),
      ),
      title: sticker == null ? null : Text(sticker.nickname),
      subtitle: Text(
        item.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: item.path));
            },
            icon: const Icon(Icons.copy),
          ),
          if (sticker == null)
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AddStickerDialog(item),
                );
              },
              icon: const Icon(Icons.add),
            ),
          if (sticker != null) ...[
            SizedBox.square(
              dimension: 48,
              child: FittedBox(
                child: Text(sticker.emoji),
              ),
            ),
            IconButton(
              onPressed: () async {
                final cubit = context.read<DeleteStickerCubit>();
                await cubit.run(sticker.id);
                cubit.state.whenOrNull(data: (_) {
                  context.read<StickersCubit>().run();
                });
              },
              icon: const Icon(Icons.delete),
            ),
          ]
        ],
      ),
    );
  }
}

extension<T> on List<T> {
  T? firstWhereOrNull(bool Function(T element) test) {
    try {
      return firstWhere(test);
    } catch (_) {
      return null;
    }
  }
}

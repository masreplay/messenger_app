import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/implementation.dart';
import 'package:messenger_app/src/main/add_sticker_dialog.dart';
import 'package:messenger_app/src/main/discussions/stickers_bloc.dart';
import 'package:messenger_app/src/main/id.dart';
import 'package:messenger_app/src/main/stickers_repo.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

/// Firebase storage folders name
abstract final class _FirebaseFolders {
  static const String stickers = 'emojis';
}

/// Image file with path and name using [Record] instead of [Class]
typedef ImageFile = ({String path, String name});

/// Private state for [StickersFilesCubit]
typedef _StickersFilesState = AsyncState<List<ImageFile>, Object?>;

final _stickersFolderRef =
    FirebaseStorage.instance.ref().child(_FirebaseFolders.stickers);

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
    final stickersCubit = useBloc<StickersCubit>(closeOnDispose: false);
    final stickers = useBlocBuilder(stickersCubit);

    final filesCubit = useBloc<StickersFilesCubit>();
    final files = useBlocBuilder(filesCubit);

    final uploadCubit = useBloc<UploadStickerFileCubit>();

    final deleteCubit = useBloc<DeleteStickerCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stickers'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final value = await ImagePicker().pickImage(
            source: ImageSource.gallery,
          );
          if (value == null) return;

          await uploadCubit.run(value);
          uploadCubit.state.whenOrNull(
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
        child: const Icon(Icons.add),
      ),
      body: stickers.maybeWhen(
        data: (stickers) => RefreshIndicator(
          onRefresh: stickersCubit.run,
          child: files.maybeWhen(
            data: (files) => ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                final item = files[index];
                final sticker = stickers
                    .firstWhereOrNull((element) => element.path == item.path);
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
                            await deleteCubit.run(sticker.id);
                            deleteCubit.state.whenOrNull(data: (_) {
                              stickersCubit.run();
                            });
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ]
                    ],
                  ),
                );
              },
            ),
            error: DefaultErrorWidget.call(filesCubit.run),
            orElse: DefaultLoadingWidget.new,
          ),
        ),
        error: DefaultErrorWidget.call(stickersCubit.run),
        orElse: DefaultLoadingWidget.new,
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';
import 'package:messenger_app/src/main/stickers_repo.dart';
import 'package:messenger_app/src/main/stickers_screen.dart';

typedef _AddStickerCubitState = AsyncState<Sticker, Object?>;

@injectable
class AddStickerCubit extends Cubit<_AddStickerCubitState>
    with AsyncStateCubitMixin {
  @appImpl
  final StickersRepository _repository;
  AddStickerCubit(this._repository)
      : super(const _AddStickerCubitState.initial());

  Future<void> run(StickerAdd sticker) =>
      handle(() => _repository.add(sticker));
}

class AddStickerDialog extends HookWidget {
  const AddStickerDialog(this.file, {super.key});

  final ImageFile file;

  @override
  Widget build(BuildContext context) {
    final formKey = useFormKey();
    final nickname = useTextEditingController();
    final emoji = useTextEditingController();

    // use AddStickerCubit

    final cubit = context.watch<AddStickerCubit>();

    return Dialog(
      child: cubit.state.maybeWhen(
        loading: DefaultLoadingWidget.new,
        orElse: () => FormBody(
          formKey: formKey,
          children: [
            TextFormField(
              controller: nickname,
              validator: context.validator.required().build(),
              decoration: const InputDecoration(labelText: 'Nickname'),
            ),
            TextFormField(
              controller: emoji,
              validator: context.validator
                  .required()
                  .maxLength(2)
                  .minLength(1)
                  .build(),
              decoration: const InputDecoration(labelText: 'Emoji'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (formKey.isNotValid()) {
                  return;
                }

                final body = StickerAdd(
                  nickname: nickname.text,
                  emoji: emoji.text,
                  path: file.path,
                );

                await cubit.run(body);
                cubit.state.whenOrNull(
                  data: (_) => context.router.popForced(),
                  error: (error, stackTrace) {
                    context.showDefaultErrorSnackBar();
                  },
                );

                if (context.mounted) context.router.popForced();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/firebase.dart';
import 'package:messenger_app/form_body.dart';
import 'package:messenger_app/hook/form_key.dart';
import 'package:messenger_app/src/main/discussions/async_snapshot.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

class _FirebaseFolders {
  const _FirebaseFolders._();
  static const String emojis = 'emojis';
}

typedef _ImageFile = ({String path, String name});

/// This is the screen that shows the stickers settings only in [kDebugMode].
///
/// This code has not been tested or maintained.
@RoutePage()
class StickersScreen extends StatefulWidget {
  const StickersScreen({super.key});

  @override
  State<StickersScreen> createState() => _StickersScreenState();
}

class _StickersScreenState extends State<StickersScreen> {
  @override
  Widget build(BuildContext context) {
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

          final ref = FirebaseStorage.instance
              .ref()
              .child(_FirebaseFolders.emojis)
              .child("${value.name}${DateTime.now().millisecondsSinceEpoch}");

          final uploadTask = await ref.putFile(
            File(value.path),
            SettableMetadata(
              contentType: 'image/png',
            ),
          );

          final url = await uploadTask.ref.getDownloadURL();
          final name = uploadTask.metadata?.name ?? "";

          // ignore: use_build_context_synchronously
          showDialog(
            context: context,
            builder: (context) => _StickerCreateDialog(
              (path: url, name: name),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: _getStickers(),
        builder: (context, snapshot) => snapshot.when(
          data: (stickers) => FutureBuilder(
            future: _getStickersFolder(),
            builder: (context, snapshot) => snapshot.when(
              data: (files) => ListView.builder(
                itemCount: files!.length,
                itemBuilder: (context, index) {
                  final item = files[index];
                  final sticker = stickers!
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
                                builder: (context) =>
                                    _StickerCreateDialog(item),
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
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection(FirebaseCollections.stickers)
                                  .doc(sticker.id)
                                  .delete();
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ]
                      ],
                    ),
                  );
                },
              ),
              error: DefaultErrorWidget.call(),
              loading: DefaultLoadingWidget.new,
            ),
          ),
          error: DefaultErrorWidget.call(),
          loading: DefaultLoadingWidget.new,
        ),
      ),
    );
  }

  Future<List<_ImageFile>> _getStickersFolder() async {
    final images = <_ImageFile>[];
    final ref = FirebaseStorage.instance.ref().child(_FirebaseFolders.emojis);
    final refList = await ref.listAll();

    for (final item in refList.items) {
      images.add((path: await item.getDownloadURL(), name: item.name));
    }
    return images;
  }

  Future<List<Sticker>> _getStickers() => FirebaseFirestore.instance
      .collection(FirebaseCollections.stickers)
      .get()
      .then(
          (value) => value.docs.map((e) => Sticker.fromJson(e.map())).toList());
}

class _StickerCreateDialog extends HookWidget {
  const _StickerCreateDialog(this.file);

  final _ImageFile file;

  @override
  Widget build(BuildContext context) {
    final formKey = useFormKey();
    final nickname = useTextEditingController();
    final emoji = useTextEditingController();

    return Dialog(
      child: FormBody(
        formKey: formKey,
        children: [
          TextFormField(
            controller: nickname,
            validator: context.validator.required().build(),
            decoration: const InputDecoration(labelText: 'Nickname'),
          ),
          TextFormField(
            controller: emoji,
            validator:
                context.validator.required().maxLength(2).minLength(1).build(),
            decoration: const InputDecoration(labelText: 'Emoji'),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.isNotValid()) {
                return;
              }

              final sticker = StickerCreate(
                nickname: nickname.text,
                emoji: emoji.text,
                path: file.path,
              );

              FirebaseFirestore.instance
                  .collection(FirebaseCollections.stickers)
                  .add(sticker.toJson());
              context.router.popForced();
            },
            child: const Text('Add'),
          ),
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

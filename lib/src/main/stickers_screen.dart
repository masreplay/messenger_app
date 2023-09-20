import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/gap.dart';
import 'package:messenger_app/src/main/discussions/async_snapshot.dart';
import 'package:messenger_app/src/widgets/error_widget.dart';
import 'package:messenger_app/src/widgets/loading_widget.dart';

/// This is the screen that shows the stickers settings only in [kDebugMode].
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
      body: FutureBuilder<List<String>>(
        future: _getStickersFolder(),
        builder: (context, snapshot) {
          return snapshot.when(
            data: (data) {
              final items = data!;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Row(
                    children: [
                      Image.network(
                        item,
                        width: 100,
                        height: 100,
                      ),
                      const Gap(),
                      Text(item),
                    ],
                  );
                },
              );
            },
            error: DefaultErrorWidget.call(),
            loading: DefaultLoadingWidget.new,
          );
        },
      ),
    );
  }

  Future<List<String>> _getStickersFolder() async {
    final images = <String>[];
    final ref = FirebaseStorage.instance.ref().child(_FirebaseFolders.emojis);
    final refList = await ref.listAll();

    for (final item in refList.items) {
      images.add(await item.getDownloadURL());
    }
    return images;
  }
}

class _FirebaseFolders {
  const _FirebaseFolders._();
  static const String emojis = 'emojis';
}

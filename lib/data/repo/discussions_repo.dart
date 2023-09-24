import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/data/id.dart';
import 'package:messenger_app/data/models/message_model.dart';
import 'package:messenger_app/data/models/sticker.dart';
import 'package:messenger_app/firebase/collections.dart';
import 'package:messenger_app/firebase/firebasex.dart';

part 'discussions_repo.freezed.dart';
part 'discussions_repo.g.dart';

@freezed
class DiscussionGroup with _$DiscussionGroup {
  const DiscussionGroup._();

  const factory DiscussionGroup({
    required String userId,
    required String peerId,
  }) = _DiscussionGroup;

  factory DiscussionGroup.fromPeerId(String peerId) => DiscussionGroup(
        userId: FirebaseAuth.instance.currentUser!.uid,
        peerId: peerId,
      );

  String get id {
    if (userId.compareTo(peerId) > 0) {
      return '$userId-$peerId';
    } else {
      return '$peerId-$userId';
    }
  }

  factory DiscussionGroup.fromJson(Map<String, dynamic> json) =>
      _$DiscussionGroupFromJson(json);
}

abstract class DiscussionsRepository {
  Stream<List<Message>> watchAll({int limit = 20});

  Future<void> deleteMessage(Id id);

  Future<MessageText> sendTextMessage(String text);

  Future<MessageSticker> sendStickerMessage(Sticker sticker);

  Future<MessageImage> sendImageMessage(File file, {String? caption});
}

// TODO(masreplay): Use UUID or GUID instead
String _randomId() => DateTime.now().millisecondsSinceEpoch.toString();

class FirebaseDiscussionsRepository implements DiscussionsRepository {
  final DiscussionGroup _group;

  const FirebaseDiscussionsRepository(this._group);

  CollectionReferenceMap get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollections.discussions);

  CollectionReferenceMap get _discussionCollection =>
      _collection.doc(_group.id).collection(_group.id);

  @override
  Stream<List<Message>> watchAll({int limit = 20}) => _discussionCollection
      .orderBy('metadata.timestamp', descending: true)
      .limit(limit)
      .snapshots()
      .map(
          (event) => event.docs.map((e) => Message.fromJson(e.map())).toList());

  MessageMetaData _buildMessageData() => MessageMetaData(
        idFrom: _group.userId,
        idTo: _group.peerId,
        timestamp: DateTime.now(),
      );

  DocumentReferenceMap _buildMessageRef() =>
      _discussionCollection.doc(_randomId());

  Future<R> _sendMessage<T extends MessageAdd, R extends Message>(
    T message,
  ) async {
    final ref = _buildMessageRef();
    await FirebaseFirestore.instance.runTransaction(
      (transaction) async => transaction.set(ref, message.toJson()),
    );
    return MessageSticker.fromJson((await ref.get()).map()) as R;
  }

  @override
  Future<MessageSticker> sendStickerMessage(Sticker sticker) => _sendMessage(
        MessageAddSticker(
          content: MessageContentSticker(sticker: sticker),
          metadata: _buildMessageData(),
        ),
      );

  @override
  Future<MessageText> sendTextMessage(String text) => _sendMessage(
        MessageAddText(
          content: MessageContentText(text: text),
          metadata: _buildMessageData(),
        ),
      );

  @override
  Future<MessageImage> sendImageMessage(File file, {String? caption}) async {
    final url = await FirebaseStorage.instance
        .ref('images/${_randomId()}')
        .putFile(file)
        .then((value) => value.ref.getDownloadURL());

    return _sendMessage(
      MessageAddImage(
        content: MessageContentImage(
          caption: caption,
          imageUrl: url,
        ),
        metadata: _buildMessageData(),
      ),
    );
  }

  @override
  Future<void> deleteMessage(id) => _discussionCollection.doc(id).delete();
}

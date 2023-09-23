import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/firebase.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';
import 'package:messenger_app/src/main/id.dart';

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
  DiscussionGroup get group;

  Stream<List<Message>> watchAll({int limit = 20});

  Future<void> deleteMessage(Id id);

  Future<MessageText> sendTextMessage(String text);

  Future<MessageSticker> sendStickerMessage(Sticker sticker);

  Future<MessageImage> sendImageMessage(File file);
}

class FirebaseDiscussionsRepository implements DiscussionsRepository {
  @override
  final DiscussionGroup group;

  const FirebaseDiscussionsRepository(this.group);

  String _randomId() => DateTime.now().millisecondsSinceEpoch.toString();

  CollectionReferenceMap get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollections.discussions);

  CollectionReferenceMap get _discussionCollection =>
      _collection.doc(group.id).collection(group.id);

  @override
  Stream<List<Message>> watchAll({int limit = 20}) => _discussionCollection
      .orderBy('timestamp', descending: true)
      .limit(limit)
      .snapshots()
      .map((event) =>
          event.docs.map((e) => Message.fromJson(e.data())).toList());

  Future<T> _sendMessage<T extends Message>(T message) async {
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      return transaction.set(
        _discussionCollection.doc(_randomId()),
        message.toJson(),
      );
    });
    return message;
  }

  MessageMetaData _buildMessageMetaData() => MessageMetaData(
        idFrom: group.userId,
        idTo: group.peerId,
        timestamp: DateTime.now(),
      );

  @override
  Future<MessageSticker> sendStickerMessage(Sticker sticker) => _sendMessage(
      MessageSticker(metadata: _buildMessageMetaData(), sticker: sticker));

  @override
  Future<MessageText> sendTextMessage(String text) => _sendMessage(
      MessageText(metadata: _buildMessageMetaData(), content: text));

  @override
  Future<MessageImage> sendImageMessage(File file, {String? text}) async {
    final fileName = _randomId();
    final ref = FirebaseStorage.instance
        .ref()
        .child(FirebaseFolders.chats)
        .child(fileName);

    final uploadTask = await ref.putFile(file);
    final imageUrl = await uploadTask.ref.getDownloadURL();

    final message = MessageImage(
      metadata: _buildMessageMetaData(),
      imageUrl: imageUrl,
      caption: text,
    );
    return _sendMessage(message);
  }

  @override
  Future<void> deleteMessage(id) => _discussionCollection.doc(id).delete();
}

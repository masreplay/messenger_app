import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';

part 'chat_service.freezed.dart';
part 'chat_service.g.dart';

@freezed
class DiscussionGroup with _$DiscussionGroup {
  const DiscussionGroup._();

  const factory DiscussionGroup({
    required String userId,
    required String peerId,
  }) = _DiscussionGroup;

  factory DiscussionGroup.fromPeerId(String peerId) => DiscussionGroup(
      userId: FirebaseAuth.instance.currentUser!.uid, peerId: peerId);

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

@injectable
class DiscussionService {
  final DiscussionGroup _group;

  const DiscussionService(this._group);

  CollectionReference<Map<String, dynamic>> get _usersCollection =>
      FirebaseFirestore.instance.collection(FirebaseCollections.users);

  CollectionReference<Map<String, dynamic>> get _discussion =>
      FirebaseFirestore.instance
          .collection(FirebaseCollections.discussions)
          .doc(_group.id)
          .collection(_group.id);

  Future<UserData?> getPeerById(String peerId) async {
    final doc = await _usersCollection.doc(peerId).get();
    final data = doc.data();
    return data == null ? null : UserData.fromJson(data);
  }

  DocumentReference<Map<String, dynamic>> _chat() =>
      _discussion.doc(DateTime.now().millisecondsSinceEpoch.toString());

  Future<Transaction> _runTxn(Message chat) =>
      FirebaseFirestore.instance.runTransaction(
          (transaction) async => transaction.set(_chat(), chat.toJson()));

  _getMessageMetaData() => MessageMetaData(
        idFrom: _group.userId,
        idTo: _group.peerId,
        timestamp: DateTime.now(),
      );
  Future<Transaction> sendStickerMessage(Sticker sticker) {
    final chat = Message.sticker(
      metadata: _getMessageMetaData(),
      sticker: sticker,
    );
    return _runTxn(chat);
  }

  Future<Transaction> sendTextMessage(String text) {
    final chat = Message.text(
      metadata: _getMessageMetaData(),
      content: text,
    );
    return _runTxn(chat);
  }

  Future<void> deleteMessage({required String messageId}) =>
      _discussion.doc(messageId).delete();

  Stream<List<Message>> getMessages({int limit = 20}) => _discussion
          .orderBy('timestamp', descending: true)
          .limit(limit)
          .snapshots()
          .map((event) => event.docs.map((e) => Message.fromJson(e.data())).toList());

  Future<void> sendImageMessage(File file) async {
    final fileName = DateTime.now().millisecondsSinceEpoch.toString();
    final reference = FirebaseStorage.instance.ref().child(fileName);
    final uploadTask = await reference.putFile(file);

    try {
      final imageUrl = await uploadTask.ref.getDownloadURL();
      final chat = Message.image(
        metadata: _getMessageMetaData(),
        imageUrl: imageUrl,
        caption: null,
      );
      await _runTxn(chat);
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}

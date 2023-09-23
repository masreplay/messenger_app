import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/data/id.dart';
import 'package:messenger_app/data/models/sticker.dart';
import 'package:messenger_app/firebase/collections.dart';
import 'package:messenger_app/firebase/firebasex.dart';

@singleton
abstract class StickersRepository {
  Future<List<Sticker>> getAll();
  Future<Sticker> add(StickerAdd sticker);

  Future<void> delete(Id id);
  @factoryMethod
  static StickersRepository create() => FirebaseStickersRepository();
}

@firebaseImpl
@LazySingleton(as: StickersRepository)
class FirebaseStickersRepository implements StickersRepository {
  CollectionReferenceMap get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollections.stickers);

  @override
  Future<Sticker> add(StickerAdd sticker) async {
    final ref = await _collection.add(sticker.toJson());
    final data = await ref.get();
    return Sticker.fromJson(data.map());
  }

  @override
  Future<List<Sticker>> getAll() async {
    final snapshot = await _collection.get();
    return snapshot.docs.map((e) => Sticker.fromJson(e.map())).toList();
  }

  @override
  Future<void> delete(Id id) => _collection.doc(id).delete();
}

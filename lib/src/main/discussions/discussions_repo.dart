import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/implementation.dart';
import 'package:messenger_app/models/user.dart';

@singleton
abstract class DiscussionsRepository {
  Stream<List<UserData>> watchAll();

  @factoryMethod
  static DiscussionsRepository create() => FirebaseDiscussionsRepository();
}

@firebaseImpl
@LazySingleton(as: DiscussionsRepository)
class FirebaseDiscussionsRepository implements DiscussionsRepository {
  CollectionReference<Map<String, dynamic>> get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollections.users);

  @override
  Stream<List<UserData>> watchAll() {
    return _collection.limit(10).snapshots().map((event) {
      return event.docs.map((e) {
        return UserData.fromJson(e.data());
      }).toList();
    });
  }
}

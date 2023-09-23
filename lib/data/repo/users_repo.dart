import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/di/get_it.dart';
import 'package:messenger_app/firebase/collections.dart';
import 'package:messenger_app/firebase/firebasex.dart';
import 'package:messenger_app/data/models/user.dart';
import 'package:messenger_app/data/id.dart';

@Singleton()
abstract class UsersRepository {
  Stream<List<UserData>> watchAll();

  Future<UserData> get(Id id);

  @factoryMethod
  static UsersRepository create() => FirebaseUsersRepository();
}

@firebaseImpl
@LazySingleton(as: UsersRepository)
class FirebaseUsersRepository implements UsersRepository {
  CollectionReferenceMap get _collection =>
      FirebaseFirestore.instance.collection(FirebaseCollections.users);

  @override
  Stream<List<UserData>> watchAll() {
    return _collection.limit(10).snapshots().map((event) {
      return event.docs.map((e) {
        return UserData.fromJson(e.data());
      }).toList();
    });
  }

  @override
  Future<UserData> get(Id id) async {
    final snapshot = await _collection.doc(id).get();
    return UserData.fromJson(snapshot.data()!);
  }
}

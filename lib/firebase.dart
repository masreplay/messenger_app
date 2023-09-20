import 'package:cloud_firestore/cloud_firestore.dart';

extension QueryDocumentSnapshotX
    on QueryDocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic> map() => {"id": id, ...data()};
}

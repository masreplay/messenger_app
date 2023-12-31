import 'package:cloud_firestore/cloud_firestore.dart';

extension QueryDocumentSnapshotX
    on QueryDocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic> map() => {"id": id, ...data()};
}

extension DocumentSnapshotX on DocumentSnapshot<Map<String, dynamic>> {
  Map<String, dynamic> map() => {"id": id, ...?data()};
}

typedef CollectionReferenceMap = CollectionReference<Map<String, dynamic>>;
typedef DocumentReferenceMap = DocumentReference<Map<String, dynamic>>;

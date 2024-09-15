import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubSubtemaRecord extends FirestoreRecord {
  SubSubtemaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameSub_subtema" field.
  String? _nameSubSubtema;
  String get nameSubSubtema => _nameSubSubtema ?? '';
  bool hasNameSubSubtema() => _nameSubSubtema != null;

  // "id_subtema" field.
  DocumentReference? _idSubtema;
  DocumentReference? get idSubtema => _idSubtema;
  bool hasIdSubtema() => _idSubtema != null;

  void _initializeFields() {
    _nameSubSubtema = snapshotData['nameSub_subtema'] as String?;
    _idSubtema = snapshotData['id_subtema'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sub_subtema');

  static Stream<SubSubtemaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubSubtemaRecord.fromSnapshot(s));

  static Future<SubSubtemaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubSubtemaRecord.fromSnapshot(s));

  static SubSubtemaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubSubtemaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubSubtemaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubSubtemaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubSubtemaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubSubtemaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubSubtemaRecordData({
  String? nameSubSubtema,
  DocumentReference? idSubtema,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameSub_subtema': nameSubSubtema,
      'id_subtema': idSubtema,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubSubtemaRecordDocumentEquality implements Equality<SubSubtemaRecord> {
  const SubSubtemaRecordDocumentEquality();

  @override
  bool equals(SubSubtemaRecord? e1, SubSubtemaRecord? e2) {
    return e1?.nameSubSubtema == e2?.nameSubSubtema &&
        e1?.idSubtema == e2?.idSubtema;
  }

  @override
  int hash(SubSubtemaRecord? e) =>
      const ListEquality().hash([e?.nameSubSubtema, e?.idSubtema]);

  @override
  bool isValidKey(Object? o) => o is SubSubtemaRecord;
}

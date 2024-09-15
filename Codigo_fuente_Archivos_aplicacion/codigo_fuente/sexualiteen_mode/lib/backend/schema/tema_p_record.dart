import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemaPRecord extends FirestoreRecord {
  TemaPRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameTemaP" field.
  String? _nameTemaP;
  String get nameTemaP => _nameTemaP ?? '';
  bool hasNameTemaP() => _nameTemaP != null;

  // "urlimg" field.
  String? _urlimg;
  String get urlimg => _urlimg ?? '';
  bool hasUrlimg() => _urlimg != null;

  // "tipoList" field.
  bool? _tipoList;
  bool get tipoList => _tipoList ?? false;
  bool hasTipoList() => _tipoList != null;

  void _initializeFields() {
    _nameTemaP = snapshotData['nameTemaP'] as String?;
    _urlimg = snapshotData['urlimg'] as String?;
    _tipoList = snapshotData['tipoList'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('temaP');

  static Stream<TemaPRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemaPRecord.fromSnapshot(s));

  static Future<TemaPRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemaPRecord.fromSnapshot(s));

  static TemaPRecord fromSnapshot(DocumentSnapshot snapshot) => TemaPRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemaPRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemaPRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemaPRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemaPRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemaPRecordData({
  String? nameTemaP,
  String? urlimg,
  bool? tipoList,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameTemaP': nameTemaP,
      'urlimg': urlimg,
      'tipoList': tipoList,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemaPRecordDocumentEquality implements Equality<TemaPRecord> {
  const TemaPRecordDocumentEquality();

  @override
  bool equals(TemaPRecord? e1, TemaPRecord? e2) {
    return e1?.nameTemaP == e2?.nameTemaP &&
        e1?.urlimg == e2?.urlimg &&
        e1?.tipoList == e2?.tipoList;
  }

  @override
  int hash(TemaPRecord? e) =>
      const ListEquality().hash([e?.nameTemaP, e?.urlimg, e?.tipoList]);

  @override
  bool isValidKey(Object? o) => o is TemaPRecord;
}

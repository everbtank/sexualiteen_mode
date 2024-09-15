import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubtemaRecord extends FirestoreRecord {
  SubtemaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameSubtema" field.
  String? _nameSubtema;
  String get nameSubtema => _nameSubtema ?? '';
  bool hasNameSubtema() => _nameSubtema != null;

  // "id_tema" field.
  DocumentReference? _idTema;
  DocumentReference? get idTema => _idTema;
  bool hasIdTema() => _idTema != null;

  // "tipoListSub" field.
  bool? _tipoListSub;
  bool get tipoListSub => _tipoListSub ?? false;
  bool hasTipoListSub() => _tipoListSub != null;

  void _initializeFields() {
    _nameSubtema = snapshotData['nameSubtema'] as String?;
    _idTema = snapshotData['id_tema'] as DocumentReference?;
    _tipoListSub = snapshotData['tipoListSub'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subtema');

  static Stream<SubtemaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubtemaRecord.fromSnapshot(s));

  static Future<SubtemaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubtemaRecord.fromSnapshot(s));

  static SubtemaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubtemaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubtemaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubtemaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubtemaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubtemaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubtemaRecordData({
  String? nameSubtema,
  DocumentReference? idTema,
  bool? tipoListSub,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameSubtema': nameSubtema,
      'id_tema': idTema,
      'tipoListSub': tipoListSub,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubtemaRecordDocumentEquality implements Equality<SubtemaRecord> {
  const SubtemaRecordDocumentEquality();

  @override
  bool equals(SubtemaRecord? e1, SubtemaRecord? e2) {
    return e1?.nameSubtema == e2?.nameSubtema &&
        e1?.idTema == e2?.idTema &&
        e1?.tipoListSub == e2?.tipoListSub;
  }

  @override
  int hash(SubtemaRecord? e) =>
      const ListEquality().hash([e?.nameSubtema, e?.idTema, e?.tipoListSub]);

  @override
  bool isValidKey(Object? o) => o is SubtemaRecord;
}

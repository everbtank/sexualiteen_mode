import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContenOpcionRecord extends FirestoreRecord {
  ContenOpcionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descrip" field.
  String? _descrip;
  String get descrip => _descrip ?? '';
  bool hasDescrip() => _descrip != null;

  // "ejemploDescrip" field.
  String? _ejemploDescrip;
  String get ejemploDescrip => _ejemploDescrip ?? '';
  bool hasEjemploDescrip() => _ejemploDescrip != null;

  // "idSub_subtema" field.
  DocumentReference? _idSubSubtema;
  DocumentReference? get idSubSubtema => _idSubSubtema;
  bool hasIdSubSubtema() => _idSubSubtema != null;

  // "imgEj" field.
  String? _imgEj;
  String get imgEj => _imgEj ?? '';
  bool hasImgEj() => _imgEj != null;

  void _initializeFields() {
    _descrip = snapshotData['descrip'] as String?;
    _ejemploDescrip = snapshotData['ejemploDescrip'] as String?;
    _idSubSubtema = snapshotData['idSub_subtema'] as DocumentReference?;
    _imgEj = snapshotData['imgEj'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contenOpcion');

  static Stream<ContenOpcionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContenOpcionRecord.fromSnapshot(s));

  static Future<ContenOpcionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContenOpcionRecord.fromSnapshot(s));

  static ContenOpcionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContenOpcionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContenOpcionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContenOpcionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContenOpcionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContenOpcionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContenOpcionRecordData({
  String? descrip,
  String? ejemploDescrip,
  DocumentReference? idSubSubtema,
  String? imgEj,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descrip': descrip,
      'ejemploDescrip': ejemploDescrip,
      'idSub_subtema': idSubSubtema,
      'imgEj': imgEj,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContenOpcionRecordDocumentEquality
    implements Equality<ContenOpcionRecord> {
  const ContenOpcionRecordDocumentEquality();

  @override
  bool equals(ContenOpcionRecord? e1, ContenOpcionRecord? e2) {
    return e1?.descrip == e2?.descrip &&
        e1?.ejemploDescrip == e2?.ejemploDescrip &&
        e1?.idSubSubtema == e2?.idSubSubtema &&
        e1?.imgEj == e2?.imgEj;
  }

  @override
  int hash(ContenOpcionRecord? e) => const ListEquality()
      .hash([e?.descrip, e?.ejemploDescrip, e?.idSubSubtema, e?.imgEj]);

  @override
  bool isValidKey(Object? o) => o is ContenOpcionRecord;
}

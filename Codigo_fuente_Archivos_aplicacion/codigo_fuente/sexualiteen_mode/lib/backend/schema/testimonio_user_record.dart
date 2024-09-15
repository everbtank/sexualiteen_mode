import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestimonioUserRecord extends FirestoreRecord {
  TestimonioUserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "nameUser" field.
  String? _nameUser;
  String get nameUser => _nameUser ?? '';
  bool hasNameUser() => _nameUser != null;

  // "nameTema" field.
  String? _nameTema;
  String get nameTema => _nameTema ?? '';
  bool hasNameTema() => _nameTema != null;

  // "imgTestimonio" field.
  String? _imgTestimonio;
  String get imgTestimonio => _imgTestimonio ?? '';
  bool hasImgTestimonio() => _imgTestimonio != null;

  // "id_user" field.
  DocumentReference? _idUser;
  DocumentReference? get idUser => _idUser;
  bool hasIdUser() => _idUser != null;

  // "ilike" field.
  bool? _ilike;
  bool get ilike => _ilike ?? false;
  bool hasIlike() => _ilike != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _nameUser = snapshotData['nameUser'] as String?;
    _nameTema = snapshotData['nameTema'] as String?;
    _imgTestimonio = snapshotData['imgTestimonio'] as String?;
    _idUser = snapshotData['id_user'] as DocumentReference?;
    _ilike = snapshotData['ilike'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testimonioUser');

  static Stream<TestimonioUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestimonioUserRecord.fromSnapshot(s));

  static Future<TestimonioUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestimonioUserRecord.fromSnapshot(s));

  static TestimonioUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestimonioUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestimonioUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestimonioUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestimonioUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestimonioUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestimonioUserRecordData({
  String? descripcion,
  String? titulo,
  String? nameUser,
  String? nameTema,
  String? imgTestimonio,
  DocumentReference? idUser,
  bool? ilike,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'titulo': titulo,
      'nameUser': nameUser,
      'nameTema': nameTema,
      'imgTestimonio': imgTestimonio,
      'id_user': idUser,
      'ilike': ilike,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestimonioUserRecordDocumentEquality
    implements Equality<TestimonioUserRecord> {
  const TestimonioUserRecordDocumentEquality();

  @override
  bool equals(TestimonioUserRecord? e1, TestimonioUserRecord? e2) {
    return e1?.descripcion == e2?.descripcion &&
        e1?.titulo == e2?.titulo &&
        e1?.nameUser == e2?.nameUser &&
        e1?.nameTema == e2?.nameTema &&
        e1?.imgTestimonio == e2?.imgTestimonio &&
        e1?.idUser == e2?.idUser &&
        e1?.ilike == e2?.ilike;
  }

  @override
  int hash(TestimonioUserRecord? e) => const ListEquality().hash([
        e?.descripcion,
        e?.titulo,
        e?.nameUser,
        e?.nameTema,
        e?.imgTestimonio,
        e?.idUser,
        e?.ilike
      ]);

  @override
  bool isValidKey(Object? o) => o is TestimonioUserRecord;
}

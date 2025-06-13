import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  bool hasContrasena() => _contrasena != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "EventosSuscritos" field.
  List<DocumentReference>? _eventosSuscritos;
  List<DocumentReference> get eventosSuscritos => _eventosSuscritos ?? const [];
  bool hasEventosSuscritos() => _eventosSuscritos != null;

  // "EventosGuardados" field.
  List<DocumentReference>? _eventosGuardados;
  List<DocumentReference> get eventosGuardados => _eventosGuardados ?? const [];
  bool hasEventosGuardados() => _eventosGuardados != null;

  // "userIID" field.
  String? _userIID;
  String get userIID => _userIID ?? '';
  bool hasUserIID() => _userIID != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _email = snapshotData['Email'] as String?;
    _contrasena = snapshotData['Contrasena'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _ciudad = snapshotData['Ciudad'] as String?;
    _eventosSuscritos = getDataList(snapshotData['EventosSuscritos']);
    _eventosGuardados = getDataList(snapshotData['EventosGuardados']);
    _userIID = snapshotData['userIID'] as String?;
    _foto = snapshotData['Foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? nombre,
  String? email,
  String? contrasena,
  String? descripcion,
  String? ciudad,
  String? userIID,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Email': email,
      'Contrasena': contrasena,
      'Descripcion': descripcion,
      'Ciudad': ciudad,
      'userIID': userIID,
      'Foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.email == e2?.email &&
        e1?.contrasena == e2?.contrasena &&
        e1?.descripcion == e2?.descripcion &&
        e1?.ciudad == e2?.ciudad &&
        listEquality.equals(e1?.eventosSuscritos, e2?.eventosSuscritos) &&
        listEquality.equals(e1?.eventosGuardados, e2?.eventosGuardados) &&
        e1?.userIID == e2?.userIID &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.email,
        e?.contrasena,
        e?.descripcion,
        e?.ciudad,
        e?.eventosSuscritos,
        e?.eventosGuardados,
        e?.userIID,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}

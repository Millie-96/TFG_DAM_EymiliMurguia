import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosRecord extends FirestoreRecord {
  EventosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "Provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "CreadoPor" field.
  DocumentReference? _creadoPor;
  DocumentReference? get creadoPor => _creadoPor;
  bool hasCreadoPor() => _creadoPor != null;

  // "UsuariosInscritos" field.
  List<DocumentReference>? _usuariosInscritos;
  List<DocumentReference> get usuariosInscritos =>
      _usuariosInscritos ?? const [];
  bool hasUsuariosInscritos() => _usuariosInscritos != null;

  // "Fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "Hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  bool hasHora() => _hora != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "eventoID" field.
  String? _eventoID;
  String get eventoID => _eventoID ?? '';
  bool hasEventoID() => _eventoID != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _ciudad = snapshotData['Ciudad'] as String?;
    _provincia = snapshotData['Provincia'] as String?;
    _creadoPor = snapshotData['CreadoPor'] as DocumentReference?;
    _usuariosInscritos = getDataList(snapshotData['UsuariosInscritos']);
    _fecha = snapshotData['Fecha'] as String?;
    _hora = snapshotData['Hora'] as String?;
    _userID = snapshotData['userID'] as String?;
    _categoria = snapshotData['Categoria'] as String?;
    _eventoID = snapshotData['eventoID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Eventos');

  static Stream<EventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosRecord.fromSnapshot(s));

  static Future<EventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventosRecord.fromSnapshot(s));

  static EventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosRecordData({
  String? titulo,
  String? descripcion,
  String? imagen,
  String? direccion,
  String? ciudad,
  String? provincia,
  DocumentReference? creadoPor,
  String? fecha,
  String? hora,
  String? userID,
  String? categoria,
  String? eventoID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Descripcion': descripcion,
      'Imagen': imagen,
      'Direccion': direccion,
      'Ciudad': ciudad,
      'Provincia': provincia,
      'CreadoPor': creadoPor,
      'Fecha': fecha,
      'Hora': hora,
      'userID': userID,
      'Categoria': categoria,
      'eventoID': eventoID,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosRecordDocumentEquality implements Equality<EventosRecord> {
  const EventosRecordDocumentEquality();

  @override
  bool equals(EventosRecord? e1, EventosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.direccion == e2?.direccion &&
        e1?.ciudad == e2?.ciudad &&
        e1?.provincia == e2?.provincia &&
        e1?.creadoPor == e2?.creadoPor &&
        listEquality.equals(e1?.usuariosInscritos, e2?.usuariosInscritos) &&
        e1?.fecha == e2?.fecha &&
        e1?.hora == e2?.hora &&
        e1?.userID == e2?.userID &&
        e1?.categoria == e2?.categoria &&
        e1?.eventoID == e2?.eventoID;
  }

  @override
  int hash(EventosRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.imagen,
        e?.direccion,
        e?.ciudad,
        e?.provincia,
        e?.creadoPor,
        e?.usuariosInscritos,
        e?.fecha,
        e?.hora,
        e?.userID,
        e?.categoria,
        e?.eventoID
      ]);

  @override
  bool isValidKey(Object? o) => o is EventosRecord;
}

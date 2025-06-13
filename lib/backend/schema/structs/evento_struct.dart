// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventoStruct extends FFFirebaseStruct {
  EventoStruct({
    String? titulo,
    String? decripcion,
    String? ciudad,
    String? imagen,
    CategoriaEventos? categoria,
    DateTime? fechaEvento,
    DocumentReference? creadorRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titulo = titulo,
        _decripcion = decripcion,
        _ciudad = ciudad,
        _imagen = imagen,
        _categoria = categoria,
        _fechaEvento = fechaEvento,
        _creadorRef = creadorRef,
        super(firestoreUtilData);

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "decripcion" field.
  String? _decripcion;
  String get decripcion => _decripcion ?? '';
  set decripcion(String? val) => _decripcion = val;

  bool hasDecripcion() => _decripcion != null;

  // "ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  set ciudad(String? val) => _ciudad = val;

  bool hasCiudad() => _ciudad != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;

  bool hasImagen() => _imagen != null;

  // "categoria" field.
  CategoriaEventos? _categoria;
  CategoriaEventos? get categoria => _categoria;
  set categoria(CategoriaEventos? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "fechaEvento" field.
  DateTime? _fechaEvento;
  DateTime? get fechaEvento => _fechaEvento;
  set fechaEvento(DateTime? val) => _fechaEvento = val;

  bool hasFechaEvento() => _fechaEvento != null;

  // "creadorRef" field.
  DocumentReference? _creadorRef;
  DocumentReference? get creadorRef => _creadorRef;
  set creadorRef(DocumentReference? val) => _creadorRef = val;

  bool hasCreadorRef() => _creadorRef != null;

  static EventoStruct fromMap(Map<String, dynamic> data) => EventoStruct(
        titulo: data['titulo'] as String?,
        decripcion: data['decripcion'] as String?,
        ciudad: data['ciudad'] as String?,
        imagen: data['imagen'] as String?,
        categoria: data['categoria'] is CategoriaEventos
            ? data['categoria']
            : deserializeEnum<CategoriaEventos>(data['categoria']),
        fechaEvento: data['fechaEvento'] as DateTime?,
        creadorRef: data['creadorRef'] as DocumentReference?,
      );

  static EventoStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'titulo': _titulo,
        'decripcion': _decripcion,
        'ciudad': _ciudad,
        'imagen': _imagen,
        'categoria': _categoria?.serialize(),
        'fechaEvento': _fechaEvento,
        'creadorRef': _creadorRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'decripcion': serializeParam(
          _decripcion,
          ParamType.String,
        ),
        'ciudad': serializeParam(
          _ciudad,
          ParamType.String,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.Enum,
        ),
        'fechaEvento': serializeParam(
          _fechaEvento,
          ParamType.DateTime,
        ),
        'creadorRef': serializeParam(
          _creadorRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static EventoStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventoStruct(
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        decripcion: deserializeParam(
          data['decripcion'],
          ParamType.String,
          false,
        ),
        ciudad: deserializeParam(
          data['ciudad'],
          ParamType.String,
          false,
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
        categoria: deserializeParam<CategoriaEventos>(
          data['categoria'],
          ParamType.Enum,
          false,
        ),
        fechaEvento: deserializeParam(
          data['fechaEvento'],
          ParamType.DateTime,
          false,
        ),
        creadorRef: deserializeParam(
          data['creadorRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Usuarios'],
        ),
      );

  @override
  String toString() => 'EventoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventoStruct &&
        titulo == other.titulo &&
        decripcion == other.decripcion &&
        ciudad == other.ciudad &&
        imagen == other.imagen &&
        categoria == other.categoria &&
        fechaEvento == other.fechaEvento &&
        creadorRef == other.creadorRef;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [titulo, decripcion, ciudad, imagen, categoria, fechaEvento, creadorRef]);
}

EventoStruct createEventoStruct({
  String? titulo,
  String? decripcion,
  String? ciudad,
  String? imagen,
  CategoriaEventos? categoria,
  DateTime? fechaEvento,
  DocumentReference? creadorRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventoStruct(
      titulo: titulo,
      decripcion: decripcion,
      ciudad: ciudad,
      imagen: imagen,
      categoria: categoria,
      fechaEvento: fechaEvento,
      creadorRef: creadorRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventoStruct? updateEventoStruct(
  EventoStruct? evento, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    evento
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventoStructData(
  Map<String, dynamic> firestoreData,
  EventoStruct? evento,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (evento == null) {
    return;
  }
  if (evento.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && evento.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventoData = getEventoFirestoreData(evento, forFieldValue);
  final nestedData = eventoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = evento.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventoFirestoreData(
  EventoStruct? evento, [
  bool forFieldValue = false,
]) {
  if (evento == null) {
    return {};
  }
  final firestoreData = mapToFirestore(evento.toMap());

  // Add any Firestore field values
  evento.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventoListFirestoreData(
  List<EventoStruct>? eventos,
) =>
    eventos?.map((e) => getEventoFirestoreData(e, true)).toList() ?? [];

import 'package:collection/collection.dart';

enum UsuarioTipo {
  Persona,
  Empresa,
}

///
///
enum CategoriaEventos {
  EventosCulturalesyartisticos,
  EventosDeportivos,
  EventosEducativos,
  EventosPublicosocomunitarios,
  EventosComerciales,
  Voluntariados,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UsuarioTipo):
      return UsuarioTipo.values.deserialize(value) as T?;
    case (CategoriaEventos):
      return CategoriaEventos.values.deserialize(value) as T?;
    default:
      return null;
  }
}

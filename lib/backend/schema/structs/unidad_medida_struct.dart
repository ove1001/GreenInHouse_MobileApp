// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadMedidaStruct extends BaseStruct {
  UnidadMedidaStruct({
    String? nombre,
    String? tipo,
  })  : _nombre = nombre,
        _tipo = tipo;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;
  bool hasNombre() => _nombre != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;
  bool hasTipo() => _tipo != null;

  static UnidadMedidaStruct fromMap(Map<String, dynamic> data) =>
      UnidadMedidaStruct(
        nombre: data['nombre'] as String?,
        tipo: data['tipo'] as String?,
      );

  static UnidadMedidaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UnidadMedidaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'tipo': _tipo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnidadMedidaStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnidadMedidaStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UnidadMedidaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UnidadMedidaStruct &&
        nombre == other.nombre &&
        tipo == other.tipo;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre, tipo]);
}

UnidadMedidaStruct createUnidadMedidaStruct({
  String? nombre,
  String? tipo,
}) =>
    UnidadMedidaStruct(
      nombre: nombre,
      tipo: tipo,
    );

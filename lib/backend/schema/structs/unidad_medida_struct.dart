// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UnidadMedidaStruct extends BaseStruct {
  UnidadMedidaStruct({
    String? str,
    String? tipo,
  })  : _str = str,
        _tipo = tipo;

  // "str" field.
  String? _str;
  String get str => _str ?? '';
  set str(String? val) => _str = val;
  bool hasStr() => _str != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;
  bool hasTipo() => _tipo != null;

  static UnidadMedidaStruct fromMap(Map<String, dynamic> data) =>
      UnidadMedidaStruct(
        str: data['str'] as String?,
        tipo: data['tipo'] as String?,
      );

  static UnidadMedidaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UnidadMedidaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'str': _str,
        'tipo': _tipo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'str': serializeParam(
          _str,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
      }.withoutNulls;

  static UnidadMedidaStruct fromSerializableMap(Map<String, dynamic> data) =>
      UnidadMedidaStruct(
        str: deserializeParam(
          data['str'],
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
}

UnidadMedidaStruct createUnidadMedidaStruct({
  String? str,
  String? tipo,
}) =>
    UnidadMedidaStruct(
      str: str,
      tipo: tipo,
    );

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoSensorStruct extends BaseStruct {
  TipoSensorStruct({
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

  static TipoSensorStruct fromMap(Map<String, dynamic> data) =>
      TipoSensorStruct(
        str: data['str'] as String?,
        tipo: data['tipo'] as String?,
      );

  static TipoSensorStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TipoSensorStruct.fromMap(data) : null;

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

  static TipoSensorStruct fromSerializableMap(Map<String, dynamic> data) =>
      TipoSensorStruct(
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
  String toString() => 'TipoSensorStruct(${toMap()})';
}

TipoSensorStruct createTipoSensorStruct({
  String? str,
  String? tipo,
}) =>
    TipoSensorStruct(
      str: str,
      tipo: tipo,
    );

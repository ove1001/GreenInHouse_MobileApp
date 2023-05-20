// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistroSensorStruct extends BaseStruct {
  RegistroSensorStruct({
    TipoSensorStruct? tipoSensor,
    ZonaSensorStruct? zonaSensor,
    int? numeroSensor,
    double? valor,
    UnidadMedidaStruct? unidadMedida,
    String? fecha,
    int? id,
  })  : _tipoSensor = tipoSensor,
        _zonaSensor = zonaSensor,
        _numeroSensor = numeroSensor,
        _valor = valor,
        _unidadMedida = unidadMedida,
        _fecha = fecha,
        _id = id;

  // "tipo_sensor" field.
  TipoSensorStruct? _tipoSensor;
  TipoSensorStruct get tipoSensor => _tipoSensor ?? TipoSensorStruct();
  set tipoSensor(TipoSensorStruct? val) => _tipoSensor = val;
  void updateTipoSensor(Function(TipoSensorStruct) updateFn) =>
      updateFn(_tipoSensor ??= TipoSensorStruct());
  bool hasTipoSensor() => _tipoSensor != null;

  // "zona_sensor" field.
  ZonaSensorStruct? _zonaSensor;
  ZonaSensorStruct get zonaSensor => _zonaSensor ?? ZonaSensorStruct();
  set zonaSensor(ZonaSensorStruct? val) => _zonaSensor = val;
  void updateZonaSensor(Function(ZonaSensorStruct) updateFn) =>
      updateFn(_zonaSensor ??= ZonaSensorStruct());
  bool hasZonaSensor() => _zonaSensor != null;

  // "numero_sensor" field.
  int? _numeroSensor;
  int get numeroSensor => _numeroSensor ?? 0;
  set numeroSensor(int? val) => _numeroSensor = val;
  void incrementNumeroSensor(int amount) =>
      _numeroSensor = numeroSensor + amount;
  bool hasNumeroSensor() => _numeroSensor != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "unidad_medida" field.
  UnidadMedidaStruct? _unidadMedida;
  UnidadMedidaStruct get unidadMedida => _unidadMedida ?? UnidadMedidaStruct();
  set unidadMedida(UnidadMedidaStruct? val) => _unidadMedida = val;
  void updateUnidadMedida(Function(UnidadMedidaStruct) updateFn) =>
      updateFn(_unidadMedida ??= UnidadMedidaStruct());
  bool hasUnidadMedida() => _unidadMedida != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  set fecha(String? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static RegistroSensorStruct fromMap(Map<String, dynamic> data) =>
      RegistroSensorStruct(
        tipoSensor: TipoSensorStruct.maybeFromMap(data['tipo_sensor']),
        zonaSensor: ZonaSensorStruct.maybeFromMap(data['zona_sensor']),
        numeroSensor: data['numero_sensor'] as int?,
        valor: castToType<double>(data['valor']),
        unidadMedida: UnidadMedidaStruct.maybeFromMap(data['unidad_medida']),
        fecha: data['fecha'] as String?,
        id: data['id'] as int?,
      );

  static RegistroSensorStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RegistroSensorStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'tipo_sensor': _tipoSensor?.toMap(),
        'zona_sensor': _zonaSensor?.toMap(),
        'numero_sensor': _numeroSensor,
        'valor': _valor,
        'unidad_medida': _unidadMedida?.toMap(),
        'fecha': _fecha,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo_sensor': serializeParam(
          _tipoSensor,
          ParamType.DataStruct,
        ),
        'zona_sensor': serializeParam(
          _zonaSensor,
          ParamType.DataStruct,
        ),
        'numero_sensor': serializeParam(
          _numeroSensor,
          ParamType.int,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'unidad_medida': serializeParam(
          _unidadMedida,
          ParamType.DataStruct,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static RegistroSensorStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegistroSensorStruct(
        tipoSensor: deserializeParam(
          data['tipo_sensor'],
          ParamType.DataStruct,
          false,
          structBuilder: TipoSensorStruct.fromSerializableMap,
        ),
        zonaSensor: deserializeParam(
          data['zona_sensor'],
          ParamType.DataStruct,
          false,
          structBuilder: ZonaSensorStruct.fromSerializableMap,
        ),
        numeroSensor: deserializeParam(
          data['numero_sensor'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        unidadMedida: deserializeParam(
          data['unidad_medida'],
          ParamType.DataStruct,
          false,
          structBuilder: UnidadMedidaStruct.fromSerializableMap,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RegistroSensorStruct(${toMap()})';
}

RegistroSensorStruct createRegistroSensorStruct({
  TipoSensorStruct? tipoSensor,
  ZonaSensorStruct? zonaSensor,
  int? numeroSensor,
  double? valor,
  UnidadMedidaStruct? unidadMedida,
  String? fecha,
  int? id,
}) =>
    RegistroSensorStruct(
      tipoSensor: tipoSensor ?? TipoSensorStruct(),
      zonaSensor: zonaSensor ?? ZonaSensorStruct(),
      numeroSensor: numeroSensor,
      valor: valor,
      unidadMedida: unidadMedida ?? UnidadMedidaStruct(),
      fecha: fecha,
      id: id,
    );

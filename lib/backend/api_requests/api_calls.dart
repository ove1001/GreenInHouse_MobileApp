import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RegistrosSensores Group Code

class RegistrosSensoresGroup {
  static String baseUrl = 'http://greeninhouse:5000/api/v1/RegistrosSensores';
  static Map<String, String> headers = {};
  static GetRegistroSensorOneCall getRegistroSensorOneCall =
      GetRegistroSensorOneCall();
  static GetRegistroSensorAllCall getRegistroSensorAllCall =
      GetRegistroSensorAllCall();
  static GetRegistroSensorAllFromSensorCall getRegistroSensorAllFromSensorCall =
      GetRegistroSensorAllFromSensorCall();
}

class GetRegistroSensorOneCall {
  Future<ApiCallResponse> call({
    int? rsid,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRegistroSensorOne',
      apiUrl: '${RegistrosSensoresGroup.baseUrl}/One',
      callType: ApiCallType.GET,
      headers: {
        ...RegistrosSensoresGroup.headers,
      },
      params: {
        'rsid': rsid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id__''',
      );
  dynamic numeroSensor(dynamic response) => getJsonField(
        response,
        r'''$[:].numero_sensor''',
      );
  dynamic tipoSensor(dynamic response) => getJsonField(
        response,
        r'''$[:].tipo_sensor''',
      );
  dynamic unidadMedida(dynamic response) => getJsonField(
        response,
        r'''$[:].unidad_medida''',
      );
  dynamic valor(dynamic response) => getJsonField(
        response,
        r'''$[:].valor''',
      );
  dynamic zonaSensor(dynamic response) => getJsonField(
        response,
        r'''$[:].zona_sensor''',
      );
  dynamic fecha(dynamic response) => getJsonField(
        response,
        r'''$[:].fecha''',
      );
}

class GetRegistroSensorAllCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRegistroSensorAll',
      apiUrl: '${RegistrosSensoresGroup.baseUrl}/All',
      callType: ApiCallType.GET,
      headers: {
        ...RegistrosSensoresGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetRegistroSensorAllFromSensorCall {
  Future<ApiCallResponse> call({
    String? np = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRegistroSensorAllFromSensor',
      apiUrl: '${RegistrosSensoresGroup.baseUrl}/All/FromSensor',
      callType: ApiCallType.GET,
      headers: {
        ...RegistrosSensoresGroup.headers,
      },
      params: {
        'np': np,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End RegistrosSensores Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}

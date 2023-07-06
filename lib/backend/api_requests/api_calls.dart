import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RegistrosSensores Group Code

class RegistrosSensoresGroup {
  static String baseUrl = 'http://192.168.1.240:5000/api/v1/RegistrosSensores';
  static Map<String, String> headers = {};
  static RegistrosSensoresGetOneCall registrosSensoresGetOneCall =
      RegistrosSensoresGetOneCall();
  static RegistrosSensoresGetAllCall registrosSensoresGetAllCall =
      RegistrosSensoresGetAllCall();
  static RegistrosSensoresGetAllFromPlantToGraphCall
      registrosSensoresGetAllFromPlantToGraphCall =
      RegistrosSensoresGetAllFromPlantToGraphCall();
  static RegistrosSensoresGetAllFromPlantCall
      registrosSensoresGetAllFromPlantCall =
      RegistrosSensoresGetAllFromPlantCall();
  static AvgFromPlantAgroupByIntervalsToGraphCall
      avgFromPlantAgroupByIntervalsToGraphCall =
      AvgFromPlantAgroupByIntervalsToGraphCall();
  static RegistrosSensoresAllFromPlantBetweenDatesToGraphCall
      registrosSensoresAllFromPlantBetweenDatesToGraphCall =
      RegistrosSensoresAllFromPlantBetweenDatesToGraphCall();
}

class RegistrosSensoresGetOneCall {
  Future<ApiCallResponse> call({
    int? rsid = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RegistrosSensoresGetOne',
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
}

class RegistrosSensoresGetAllCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'RegistrosSensoresGetAll',
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

class RegistrosSensoresGetAllFromPlantToGraphCall {
  Future<ApiCallResponse> call({
    String? np = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RegistrosSensoresGetAllFromPlantToGraph',
      apiUrl: '${RegistrosSensoresGroup.baseUrl}/All/FromPlant/ToGraph',
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

class RegistrosSensoresGetAllFromPlantCall {
  Future<ApiCallResponse> call({
    String? np = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RegistrosSensoresGetAllFromPlant',
      apiUrl: '${RegistrosSensoresGroup.baseUrl}/All/FromPlant',
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

class AvgFromPlantAgroupByIntervalsToGraphCall {
  Future<ApiCallResponse> call({
    String? np = '',
    int? d,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AvgFromPlantAgroupByIntervalsToGraph',
      apiUrl:
          '${RegistrosSensoresGroup.baseUrl}/Avg/FromPlant/AgroupByIntervals/ToGraph',
      callType: ApiCallType.GET,
      headers: {
        ...RegistrosSensoresGroup.headers,
      },
      params: {
        'np': np,
        'd': d,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RegistrosSensoresAllFromPlantBetweenDatesToGraphCall {
  Future<ApiCallResponse> call({
    String? np = '',
    String? fi = '',
    String? ff = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RegistrosSensoresAllFromPlantBetweenDatesToGraph',
      apiUrl:
          '${RegistrosSensoresGroup.baseUrl}/All/FromPlant/BetweenDates/ToGraph',
      callType: ApiCallType.GET,
      headers: {
        ...RegistrosSensoresGroup.headers,
      },
      params: {
        'np': np,
        'fi': fi,
        'ff': ff,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End RegistrosSensores Group Code

/// Start TipoPlanta Group Code

class TipoPlantaGroup {
  static String baseUrl = '192.168.1.240:5000/api/v1/TiplosPlantas';
  static Map<String, String> headers = {};
  static TipoPlantaGetOneCall tipoPlantaGetOneCall = TipoPlantaGetOneCall();
  static TipoPlantaGetAllCall tipoPlantaGetAllCall = TipoPlantaGetAllCall();
  static TipoPlantaPostOneCall tipoPlantaPostOneCall = TipoPlantaPostOneCall();
  static TipoPlantaUpdateOneCall tipoPlantaUpdateOneCall =
      TipoPlantaUpdateOneCall();
}

class TipoPlantaGetOneCall {
  Future<ApiCallResponse> call({
    String? ntp = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TipoPlantaGetOne',
      apiUrl: '${TipoPlantaGroup.baseUrl}/One',
      callType: ApiCallType.GET,
      headers: {
        ...TipoPlantaGroup.headers,
      },
      params: {
        'ntp': ntp,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TipoPlantaGetAllCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'TipoPlantaGetAll',
      apiUrl: '${TipoPlantaGroup.baseUrl}/All',
      callType: ApiCallType.GET,
      headers: {
        ...TipoPlantaGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TipoPlantaPostOneCall {
  Future<ApiCallResponse> call({
    String? ntp = '',
    String? dtp = '',
  }) {
    final body = '''
{
  "descripcion_planta": "${dtp}",
  "tipo_planta": "${ntp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TipoPlantaPostOne',
      apiUrl: '${TipoPlantaGroup.baseUrl}/One',
      callType: ApiCallType.POST,
      headers: {
        ...TipoPlantaGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TipoPlantaUpdateOneCall {
  Future<ApiCallResponse> call({
    String? ntp = '',
    String? dtp = '',
  }) {
    final body = '''
{
  "descripcion_planta": "${dtp}",
  "tipo_planta": "${ntp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TipoPlantaUpdateOne',
      apiUrl: '${TipoPlantaGroup.baseUrl}/One',
      callType: ApiCallType.PUT,
      headers: {
        ...TipoPlantaGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End TipoPlanta Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

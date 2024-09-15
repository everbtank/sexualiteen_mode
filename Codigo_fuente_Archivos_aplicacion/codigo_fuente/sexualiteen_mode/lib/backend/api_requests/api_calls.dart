import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SexteenAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'SexteenAPI',
      apiUrl: 'https://huggingface.co/meta-llama/Meta-Llama-3.1-8B-Instruct',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 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',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PruebaCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "inputs": "{{TextInputValue}}",
  "parameters": {
    "max_length": 50
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'prueba',
      apiUrl: 'https://huggingface.co/meta-llama/Meta-Llama-3.1-8B-Instruct',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic generatedText(dynamic response) => getJsonField(
        response,
        r'''$.generated_text''',
      );
}

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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

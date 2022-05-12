// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_event.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ApiEvent implements ApiEvent {
  _ApiEvent(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://firebasestorage.googleapis.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Animal>> getData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<
        List<Animal>>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'v0/b/sonpn-b17dcpt177.appspot.com/o/json%2Fdata_animal.json?alt=media&token=8b8e4431-22dd-430c-b2d3-c6e8a5b652aa',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Animal.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
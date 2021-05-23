import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter_startup/data/dio/Dio.dart';

class BaseAPI {
  String _uri = '';
  Dio _dio = ApiInterceptors().dio;

  String baseUrl = 'http://api.jepang.aiiviii.biz.id/v1';

  Future getWithCache(String url,
      {Duration duration,
      String key,
      String subKey,
      bool isRefresh = false}) async {
    // url = baseUrl + url;
    // print(url);
    final response = _dio.get(url,
        options: buildCacheOptions(duration,
            primaryKey: key,
            subKey: subKey,
            maxStale: Duration(minutes: 2),
            forceRefresh: isRefresh,
            options: Options(headers: {'requiresToken': true})));
    return response;
  }

  Future get(String url) async {
    // url = baseUrl + url;
    // print(url);

    final response = _dio.get(url);
    return response;
  }
}

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dpu_mobil/app/product/service/model/base_model.dart';
import 'package:dpu_mobil/app/product/service/model/response_model.dart';
import 'package:dpu_mobil/app/product/service/service_settings.dart';


final class DioService {
  DioService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }
  final String baseUrl = ServiceSettings.baseUrl;

  late final Dio _dio;

  Future<ResponseModel<T>> get<T extends BaseModel<T>>(
      String path, {
        required T model,
        Object? data,
        bool addToken = false,
      }) async {
    addIntercepter(addToken: addToken);
    _dio.httpClientAdapter = IOHttpClientAdapter(
      validateCertificate: (X509Certificate? cert, String host, int port) {
        return true;
      },
      createHttpClient: () {
        return HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) {
            return true;
          };
      },
    );
    try {
      final response = await _dio.get<dynamic>(
        path,
        data: data,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final parseModel = _parseModel<T>(
          data: response.data,
          model: model,
        );
        return ResponseModel<T>(
          message: response.statusMessage,
          data: parseModel,
          statusCode: response.statusCode,
        );
      }
      return ResponseModel<T>(
        message: response.statusMessage,
        data: null,
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return ResponseModel(
          message: 'Lütfen internet bağlantınızı kontrol ediniz.', // fixme localize et
        );
      } else {
        return Future.value(
          ResponseModel<T>(
            message: e.response?.statusMessage,
            data: null,
            statusCode: e.response?.statusCode,
          ),
        );
      }
    }
  }

  Future<ResponseModel<T>> post<T extends BaseModel<T>>(
      String path, {
        required T model,
        Object? data,
        bool addToken = false,
      }) async {
    addIntercepter(addToken: addToken);
    _dio.httpClientAdapter = IOHttpClientAdapter(
      validateCertificate: (X509Certificate? cert, String host, int port) {
        return true;
      },
      createHttpClient: () {
        return HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) {
            return true;
          };
      },
    );
    try {
      final response = await _dio.post<dynamic>(
        path,
        data: data,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final parseModel = _parseModel<T>(
          data: response.data,
          model: model,
        );
        return ResponseModel<T>(
          message: response.statusMessage,
          data: parseModel,
          statusCode: response.statusCode,
        );
      }
      return ResponseModel<T>(
        message: response.statusMessage,
        data: null,
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      return Future.value(
        ResponseModel<T>(
          message: e.response?.statusMessage,
          data: null,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  Future<ResponseModel<T>> delete<T extends BaseModel<T>>(
      String path, {
        required T model,
        Object? data,
        bool addToken = false,
      }) async {
    addIntercepter(addToken: addToken);
    _dio.httpClientAdapter = IOHttpClientAdapter(
      validateCertificate: (X509Certificate? cert, String host, int port) {
        return true;
      },
      createHttpClient: () {
        return HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) {
            return true;
          };
      },
    );
    try {
      final response = await _dio.delete<dynamic>(
        path,
        data: data,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final parseModel = _parseModel<T>(
          data: response.data,
          model: model,
        );
        return ResponseModel<T>(
          message: response.statusMessage,
          data: parseModel,
          statusCode: response.statusCode,
        );
      }
      return ResponseModel<T>(
        message: response.statusMessage,
        data: null,
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      return Future.value(
        ResponseModel<T>(
          message: e.response?.statusMessage,
          data: null,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  Future<ResponseModel<T>> put<T extends BaseModel<T>>(
      String path, {
        required T model,
        Object? data,
        bool addToken = false,
      }) async {
    addIntercepter(addToken: addToken);
    _dio.httpClientAdapter = IOHttpClientAdapter(
      validateCertificate: (X509Certificate? cert, String host, int port) {
        return true;
      },
      createHttpClient: () {
        return HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) {
            return true;
          };
      },
    );
    try {
      final response = await _dio.put<dynamic>(
        path,
        data: data,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final parseModel = _parseModel<T>(
          data: response.data,
          model: model,
        );
        return ResponseModel<T>(
          message: response.statusMessage,
          data: parseModel,
          statusCode: response.statusCode,
        );
      }
      return ResponseModel<T>(
        message: response.statusMessage,
        data: null,
        statusCode: response.statusCode,
      );
    } on DioException catch (e) {
      return Future.value(
        ResponseModel<T>(
          message: e.response?.statusMessage,
          data: null,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  T? _parseModel<T extends BaseModel<T>>({
    dynamic data,
    T? model,
  }) {
    if (model == null || data == null) {
      return null;
    }
    if (data is Map) {
      return model.fromJson(data as Map<String, dynamic>);
    } else if (data is List) {
      return data
          .map(
            (responseData) => model.fromJson(
          responseData is Map<String, dynamic> ? responseData : {},
        ),
      )
          .cast<T>()
          .toList() as T;
    } else {
      return data.toString() as T;
    }
  }

  void addIntercepter({bool addToken = false, String? token}) { // fixme düzenle
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          if (addToken) {
            //final token = await CacheManager.instance.getToken();
            if (token != null && token.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
              return handler.next(options);
            } else {
              return handler.next(options);
            }
          }
          return handler.next(options);
        },
        onError: (error, handler) => handler.next(error),
        onResponse: (response, handler) => handler.next(response),
      ),
    );
  }
}

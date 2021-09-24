import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map<String, dynamic>? data;

  ApiRequest({required this.url, this.data});

  Dio _dio() {
    return Dio(BaseOptions(headers: {
      'Authorization': 'apikey 489xujAOeE4I91bi4KY1Tb:5YFKt91upfbqohlOPA8EJU'
    }));
  }

  void get({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    _dio().get(this.url, queryParameters: this.data).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}

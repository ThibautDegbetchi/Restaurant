import 'dart:convert';

import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;

import '../functions/functions.dart';

class ApiClient extends GetConnect {
  Future<dynamic> getFromApi(url, {Map<String, dynamic>? parameters}) async {
    print("get request " + url);
    print(parameters.toString());
    try {
      Dio.Dio dio = Dio.Dio();
      dio.options.headers = await setHeadersWithToken();
      Dio.Response response = await dio.get(url, queryParameters: parameters);
      var apiResponse = response.data;
      print("api get response : " + apiResponse.toString());
      return {"result": apiResponse};
    } on Dio.DioError catch (e) {
      print("get response error : " + e.response.toString());
      print("get error : " + e.toString());
      return {'result': null};
    }
  }

  Future<dynamic> postFromApi(url, dynamic map) async {
    print('post url: $url');
    print('object: $map');
    Dio.Dio dio = Dio.Dio();
    try {
      dio.options.headers = await setHeadersWithToken();
      var response = await dio.post(url, data: map);
      var apiResponse = response.data;
      print('Api response: $apiResponse');
      return {"result": apiResponse};
    } on Dio.DioError catch (e) {
      print("get response error : " + e.response.toString());
      print("get error : " + e.toString());
      String json = e.response.toString();
      appSnackBar("error", "Erreur", jsonDecode(json)['message'].toString());
      return {'result': null};
    }
  }

  Future<dynamic> postWithFileFromApipostWithFileFromApi(
      url, Dio.FormData formData) async {
    print("post with file request : " + url);
    Dio.Dio dio = Dio.Dio();
    try {
      dio.options.headers = await setHeadersWithToken();
      var response = await dio.post(url, data: formData);
      Dio.Response apiResponse = response.data;
      print('Api response: $apiResponse');
      return {"result": apiResponse};
    } on Dio.DioError catch (e) {
      print("get response error : " + e.response.toString());
      print("get error : " + e.toString());
      String json = e.response.toString();
      appSnackBar("error", "Erreur", jsonDecode(json)['message'].toString());
      return {'result': null};
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetworkService {
  static const url = "https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9";
  static Future getProducts() async {
    try {
      var response = await Dio().get(url);
      print(response);
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}

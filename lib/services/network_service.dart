import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:products_showcase/models/BitcoinPrice.dart';

class NetworkService {
  static const url = "https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9";
  static const url2 = "https://api.coindesk.com/v1/bpi/historical/close.json";
  static Future getProducts() async {
    try {
      var response = await Dio().get(url);
      print(response);
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  static Future getPrices() async {
    String startDate =
        DateTime.now().subtract(Duration(days: 30)).toIso8601String();
    String endDate = DateTime.now().toIso8601String();

    endDate = endDate.substring(0, 10);
    startDate = startDate.substring(0, 10);
    // print("Start Date ${startDate}");
    // print("End Date ${endDate}");

    Map<String, dynamic> parameters = {
      "start": "$startDate",
      "end": "$endDate",
      "currency": "eur",
    };

    try {
      var response = await Dio().get(url2, queryParameters: parameters);
      // print(response);
      // Map responseMap = jsonDecode(response.data.toString());

      BitcoinPrice bp =
          BitcoinPrice.fromJson(jsonDecode(response.data.toString()));
      return bp;
    } catch (e) {
      print(e);
    }
  }
}

import 'dart:convert';

import 'package:get/get.dart';
import 'package:products_showcase/models/BitcoinPrice.dart';
import 'package:products_showcase/services/network_service.dart';

import '../models/Bpi.dart';

class PricesContoller extends GetxController {
  double maxprice = 0.0;
  //
  String date = "";

  // Rx<Bpi> bpi = Bpi().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getPrices();
    super.onInit();
  }

  getPrices() async {
    double maxPrice = 0;
    String maxPriceDate = "";
    BitcoinPrice bitcoinPrice = await NetworkService.getPrices();
    bitcoinPrice.bpi.entries.forEach((element) {
      print("Date ${element.key}");
      print("Price ${element.value}");
      if (element.value > maxPrice) {
        maxPrice = element.value;
        maxPriceDate = element.key;
      }
    });

    print("Max date: ${maxPriceDate}");
    print("Max price: ${maxPrice}");

    maxprice = maxPrice;
    date = maxPriceDate;
    //
    // Bpi maxBpi = Bpi();
    // maxBpi.date = maxPriceDate;
    // maxBpi.price = maxPrice;
    // bpi = maxBpi as Rx<Bpi>;

    notifyChildrens();
    // List<dynamic> productsMap = response;
  }
}

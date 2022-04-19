import 'dart:convert';

import 'package:get/get.dart';
import 'package:products_showcase/models/index.dart';
import 'package:products_showcase/services/network_service.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  Future getProducts() async {
    var response = await NetworkService.getProducts();
    print(response['products']);
    List<dynamic> productsMap = response['products'];
    for (dynamic product in productsMap) {
      products.addIf(
          !products.contains(
            Product.fromJson(product),
          ),
          Product.fromJson(product));
    }
    notifyChildrens();
  }
}

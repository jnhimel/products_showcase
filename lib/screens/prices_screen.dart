import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:products_showcase/controllers/prices_controller.dart';

import '../models/Bpi.dart';
import '../widgets/appbar.dart';
import '../widgets/navbar.dart';

class PricesPage extends StatelessWidget {
  PricesPage({Key? key}) : super(key: key);

  final pricesContoller = Get.put(PricesContoller());

  @override
  Widget build(BuildContext context) {
    // pricesContoller.getPrices();
    return Scaffold(
        appBar: MyAppBar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16.w, left: 16.w, right: 16.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Date"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("price"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("${pricesContoller.date}"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("${pricesContoller.maxprice}"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              pricesContoller.getPrices();
            },
            child: Icon(Icons.refresh)),
        bottomNavigationBar: NavBar());
  }
}

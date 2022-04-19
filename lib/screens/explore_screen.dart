import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:products_showcase/controllers/products_controller.dart';
import 'package:products_showcase/models/index.dart';
import 'package:products_showcase/widgets/explore_tile.dart';

import '../widgets/appbar.dart';
import '../widgets/navbar.dart';
import '../widgets/product_dialog.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 16.w, left: 16.w, right: 16.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(
                    () => SizedBox(
                      height: 640.h,
                      child: GridView.custom(
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3,
                          mainAxisSpacing: 6.w,
                          crossAxisSpacing: 6.w,
                          repeatPattern: QuiltedGridRepeatPattern.same,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                            (context, index) => GestureDetector(
                                  onTap: () => showDialog(
                                    builder: (context) => ProductDialog(
                                        product:
                                            productController.products[index]),
                                    context: context,
                                  ),
                                  child: ExploreTile(
                                      product:
                                          productController.products[index]),
                                ),
                            childCount: productController.products.length),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: NavBar());
  }
}

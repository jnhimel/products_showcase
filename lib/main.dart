import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:products_showcase/screens/explore_screen.dart';

void main() {
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context) => MaterialApp(
        title: 'Product Showcase',
        theme: ThemeData(
          fontFamily: 'DM Sans',
          primarySwatch: Colors.blue,
        ),
        home: ExploreScreen(),
      ),
    );
  }
}

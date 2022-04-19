import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/product.dart';

class ProductDialog extends StatelessWidget {
  const ProductDialog({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      title: Container(
          child: Row(
        children: [Text(product.title)],
      )),
      content: FittedBox(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.w),
              child: Image(
                image: NetworkImage(product.thumbnail),
              ),
            ),
            Container(
              height: 44.w,
              width: 234.w,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 16.w),
              decoration: BoxDecoration(
                  color: Color(0xFFF4F5F7),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "View Post",
                style: TextStyle(fontSize: 36.w, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}

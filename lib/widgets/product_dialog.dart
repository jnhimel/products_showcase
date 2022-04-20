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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  "assets/images/img.png",
                  height: 40.w,
                  width: 40.w,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saber Ali",
                    style: TextStyle(
                        fontSize: 14.w,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    "Dhaka, Bangladesh",
                    style: TextStyle(
                        fontSize: 10.w,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  "assets/images/icons/add_user.png",
                  height: 20.w,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Follow",
                  style: TextStyle(
                      fontSize: 13.w,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFF15223)),
                ),
              ],
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFFfef6f4),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.w),
              ),
              minimumSize: Size(94.w, 32.h),
            ),
          ),
        ],
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
            SizedBox(
              height: 16.w,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "View Post",
                style: TextStyle(
                    fontSize: 36.w,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFF4F5F7),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.w),
                ),
                minimumSize: Size(480.w, 100.h),
              ),
            )
            // Container(
            //   height: 44.w,
            //   width: 234.w,
            //   alignment: Alignment.center,
            //   margin: EdgeInsets.only(top: 16.w),
            //   decoration: BoxDecoration(
            //       color: Color(0xFFF4F5F7),
            //       borderRadius: BorderRadius.circular(5)),
            //   child: Text(
            //     "View Post",
            //     style: TextStyle(fontSize: 36.w, fontWeight: FontWeight.w700),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

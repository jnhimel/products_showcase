import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF4F5F7), borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: const Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
            ),
            Container(
              width: 300.w,
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Search in Swipexyz.."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

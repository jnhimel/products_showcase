import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:products_showcase/screens/explore_screen.dart';
import 'package:products_showcase/screens/prices_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 90.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const NavbarItem(
              image: "assets/images/icons/home.png",
              label: "Home",
              color: Color(0xFF130F26),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExploreScreen(),
                  )),
              child: const NavbarItem(
                image: "assets/images/icons/explore.png",
                label: "Explore",
                color: const Color(0xFFF15223),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PricesPage(),
                  )),
              child: const CircleAvatar(
                backgroundColor: const Color(0xFF040415),
                child: const Icon(Icons.add),
                radius: 28,
              ),
            ),
            const NavbarItem(
              image: "assets/images/icons/inbox.png",
              label: "inbox",
              color: const Color(0xFF130F26),
            ),
            const NavbarItem(
              image: "assets/images/icons/cart.png",
              label: "Shop",
              color: const Color(0xFF130F26),
            )
          ],
        ),
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  const NavbarItem({
    Key? key,
    required this.image,
    required this.label,
    required this.color,
  }) : super(key: key);

  final String image;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      child: Column(
        children: [
          Image.asset(
            image,
            color: color,
            height: 20.w,
            width: 20.w,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 12.w, color: color, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

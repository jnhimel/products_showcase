import 'package:flutter/material.dart';
import 'package:products_showcase/models/index.dart';

class ExploreTile extends StatelessWidget {
  const ExploreTile({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(image: NetworkImage(product.thumbnail), fit: BoxFit.cover),
    );
  }
}

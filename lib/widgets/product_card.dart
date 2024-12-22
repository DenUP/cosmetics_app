import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/core/extension/string_modif.dart';
import 'package:cosmetics_app/entity/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 188,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: AppColor.backgroundItem,
                  borderRadius: BorderRadius.circular(15),
                  // Тень товара
                  // boxShadow: const [
                  //   BoxShadow(
                  //       color: Colors.black,
                  //       offset: Offset(0.5, 0.5),
                  //       blurRadius: 0.5)
                  // ],
                ),
              ),
              Positioned(
                  top: 8,
                  left: 8,
                  right: 8,
                  child: Image.asset(
                    product.img,
                    height: 172,
                  )),
            ],
          ),
          const SizedBox(
            height: 6.95,
          ),
          Text(product.category,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11.58,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Raleway')),
          const SizedBox(
            height: 3,
          ),
          Text(product.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Raleway')),
          const SizedBox(
            height: 8,
          ),
          Text(product.price.rubString(),
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat'))
        ],
      ),
    );
  }
}

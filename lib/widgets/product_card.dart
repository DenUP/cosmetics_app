import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/core/extension/string_modif.dart';
import 'package:cosmetics_app/entity/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final stock = product.stock;
    final onePlusOne = product.onePlusOne;
    final oldPrice = product.oldPrice;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
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
              stock == true
                  ? Positioned(
                      top: 8,
                      right: 8,
                      child: Image.asset(
                        'assets/img/stocks/stock.png',
                        width: MediaQuery.of(context).size.width / 12,
                      ))
                  : const SizedBox(),
              onePlusOne == true
                  ? Positioned(
                      top: MediaQuery.of(context).size.height / 22,
                      right: 8,
                      width: MediaQuery.of(context).size.width / 12,
                      child: Text(
                        '1+1',
                        style: TextStyle(
                            color: AppColor.purple,
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.height / 55),
                      ),
                    )
                  : const SizedBox()
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
          Row(
            children: [
              Text(product.price.rubString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat')),
              SizedBox(width: MediaQuery.of(context).size.width / 50),
              oldPrice != '0'
                  ? Text(product.oldPrice.rubString(),
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat'))
                  : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:cosmetics_app/entity/product.dart';
import 'package:cosmetics_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final List<Product> products;
  final String title;
  final String imgLiner;
  const ListProduct(
      {super.key,
      required this.products,
      required this.title,
      required this.imgLiner});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway'),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15, 4, 0, 24),
          child: Image.asset(
            imgLiner,
            width: MediaQuery.of(context).size.width / 3.5,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 300,
          child: ListView.builder(
            itemExtent: 187,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}

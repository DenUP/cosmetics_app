import 'package:cosmetics_app/entity/product.dart';

final List<Product> _newProduct = [
  Product(
    category: 'Сыворотка',
    title: 'Unstress Total Serenity Serum',
    img: 'assets/img/new_product/chirstiona_unstress_total.png',
    price: '10 195',
    stock: false,
    onePlusOne: false,
  ),
  Product(
    category: 'Тоник',
    title: 'Unstress Revitalizing Toner ',
    img: 'assets/img/new_product/christina_unstress_toner.png',
    price: '3095',
    stock: false,
    onePlusOne: false,
  ),
  Product(
    category: 'Тоник',
    title: 'Unstress Revitalizing Toner ',
    img: 'assets/img/new_product/christina_unstress_toner 2.png',
    price: '3095',
    stock: false,
    onePlusOne: false,
  ),
];

List<Product> getNewProduct() => _newProduct;

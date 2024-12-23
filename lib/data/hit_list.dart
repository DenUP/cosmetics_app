import 'package:cosmetics_app/entity/product.dart';

List<Product> _hitList = [
  Product(
      category: 'Сыворотка',
      title: 'Forever Young- Total Renewal Serum',
      img: 'assets/img/hit/forever_Young.png',
      price: '10 195',
      stock: false,
      onePlusOne: false),
  Product(
      category: 'Осветляющая маска',
      title: 'Illustious Mask',
      img: 'assets/img/hit/christina.png',
      price: '1595',
      stock: false,
      onePlusOne: false),
  Product(
      category: 'Тоник',
      title: 'Unstress Revitalizing Toner',
      img: 'assets/img/hit/christina_unstress_toner 2.png',
      price: '3095',
      stock: false,
      onePlusOne: false)
];

List<Product> getHitList() => _hitList;

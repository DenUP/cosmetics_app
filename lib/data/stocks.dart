import 'package:cosmetics_app/entity/product.dart';

final List<Product> _stocks = [
  Product(
      category: 'Сыворотка',
      title: 'Muse Serum Supreme',
      img: 'assets/img/stocks/muse_Serum _Supreme.png',
      price: '10 195',
      oldPrice: '10 195',
      stock: true,
      onePlusOne: false),
  Product(
      category: 'Крем',
      title: 'Unstress Revitalizing Toner',
      img: 'assets/img/stocks/unstress_Revitalizing_Toner.png',
      price: '1595',
      oldPrice: '3195',
      stock: true,
      onePlusOne: true),
  Product(
      category: 'Тоник',
      title: 'Unstress Revitalizing Toner',
      img: 'assets/img/stocks/unstress_Revitalizin_Toner.png',
      price: '3095',
      oldPrice: '5999',
      stock: true,
      onePlusOne: true)
];

List<Product> getStocks() => _stocks;

import 'package:cosmetics_app/entity/category.dart';

final List<Category> _category = [
  Category(title: 'Наборы', img: 'assets/img/category/christina_2.png'),
  Category(title: 'Для лица', img: 'assets/img/category/face.png'),
  Category(title: 'Для глаз', img: 'assets/img/category/christina.png'),
  Category(title: 'Для тела', img: 'assets/img/category/body.png'),
  Category(title: 'Умывание', img: 'assets/img/category/ruki.png'),
];

List<Category> getCategory() => _category;

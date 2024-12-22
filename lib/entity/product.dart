class Product {
  final String category;
  final String title;
  final String img;
  final String price;
  final String oldPrice;
  final bool stock;
  final bool onePlusOne;

  Product(
      {required this.category,
      required this.title,
      required this.img,
      required this.price,
      required this.stock,
      required this.onePlusOne,
      this.oldPrice = '0'});
}

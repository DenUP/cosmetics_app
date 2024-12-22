import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/entity/category.dart';
import 'package:cosmetics_app/entity/product.dart';
import 'package:cosmetics_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class MainList extends StatefulWidget {
  const MainList({super.key});

  @override
  State<MainList> createState() => _MainListState();
}

int _currentPage = 0;
List<String> _imgScroll = [
  'assets/img/slider/lineRepair.png',
  'assets/img/slider/christinaMuse.png'
];

final List<Category> category = [
  Category(title: 'Наборы', img: 'assets/img/category/christina_2.png'),
  Category(title: 'Для лица', img: 'assets/img/category/face.png'),
  Category(title: 'Для глаз', img: 'assets/img/category/christina.png'),
  Category(title: 'Для тела', img: 'assets/img/category/body.png'),
  Category(title: 'Умывание', img: 'assets/img/category/ruki.png'),
];

final List<Product> new_product = [
  Product(
      category: 'Сыворотка',
      title: 'Unstress Total Serenity Serum',
      img: 'assets/img/new_product/chirstiona_unstress_total.png',
      price: '10 195'),
  Product(
      category: 'Тоник',
      title: 'Unstress Revitalizing Toner ',
      img: 'assets/img/new_product/christina_unstress_toner.png',
      price: '3095'),
  Product(
      category: 'Тоник',
      title: 'Unstress Revitalizing Toner ',
      img: 'assets/img/new_product/christina_unstress_toner 2.png',
      price: '3095'),
];

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Slider(),
            ListCategory(),
            NewProducts(),
          ],
        ),
      ),
    );
  }
}

class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 360,
        child: PageView.builder(
          itemCount: _imgScroll.length,
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(_imgScroll[index]),
                fit: BoxFit.cover,
              )),
            );
          },
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 166,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.transparent,
                AppColor.blackSlider,
              ])),
        ),
      ),
      Positioned(
        top: 50,
        left: 18,
        child: Row(
          children: List.generate(
              _imgScroll.length,
              (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: index == _currentPage
                            ? Colors.white
                            : AppColor.graySlider.withOpacity(0.5),
                        shape: BoxShape.circle),
                  )),
        ),
      ),
      const Positioned(
        left: 24,
        bottom: 28,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Скидка -15%',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'VelaSans',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Сыворотка',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'VelaSans',
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'HA EYE & NECK SERUM',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'VelaSans',
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      Positioned(
          bottom: 29,
          right: 12,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  minimumSize: const Size(120, 36),
                  padding: const EdgeInsets.all(10),
                  side: const BorderSide(color: Colors.white, width: 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)))),
              onPressed: () {},
              child: const Text(
                'Перейти к акции',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Raleway'),
              )))
    ]);
  }
}

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        itemExtent: 95,
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categor = category[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                Image.asset(categor.img),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  categor.title,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class NewProducts extends StatelessWidget {
  const NewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Новинки',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway'),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15, 4, 0, 24),
          child: Image.asset('assets/img/new_product/liner_1.png'),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 300,
          child: ListView.builder(
            itemExtent: 187,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: new_product.length,
            itemBuilder: (context, index) {
              return ProductCard(product: new_product[index]);
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


class QuestionTest extends StatelessWidget {
  const QuestionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
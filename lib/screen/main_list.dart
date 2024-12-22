import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/entity/category.dart';
import 'package:cosmetics_app/entity/product.dart';
import 'package:cosmetics_app/entity/question.dart';
import 'package:cosmetics_app/widgets/app_button.dart';
import 'package:cosmetics_app/widgets/list_product.dart';
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

final List<Product> newProduct = [
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

final List<Question> question = [
  Question(img: 'assets/img/questions/demakiyash.png', title: 'Демакияж'),
  Question(img: 'assets/img/questions/ochistka.png', title: 'Очищение'),
  Question(img: 'assets/img/questions/svorotka.png', title: 'Сыворотка'),
  Question(img: 'assets/img/questions/dnevnoi_krem.png', title: 'Дневной крем'),
];

final List<Product> stocks = [
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

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Slider(),
            ListCategory(),
            NewProducts(),
            QuestionTest(),
            SizedBox(
              height: 40,
            ),
            Stocks(),
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
      const Positioned(
          bottom: 29,
          right: 12,
          child: AppButton(text: 'Перейти к акции', buttonWhite: true))
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
    return ListProduct(
        products: newProduct,
        title: 'Новинки',
        imgLiner: 'assets/img/new_product/liner_1.png');
  }
}

class QuestionTest extends StatelessWidget {
  const QuestionTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // margin: const EdgeInsets.fromLTRB(22, 65, 11, 23),
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.backgroundQuestino,
          ),
          child: Stack(
            // alignment: Alignment.topRight,
            children: [
              Positioned(
                top: 0,
                right: 0,
                child:
                    Image.asset('assets/img/questions/background_question.png'),
              ),
              const SizedBox(
                height: 65,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 65, 11, 27),
                  child: ListView.builder(
                    itemExtent: 105,
                    scrollDirection: Axis.horizontal,
                    itemCount: question.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            question[index].img,
                            width: 81,
                            height: 75,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            question[index].title,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Raleway',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
              const Positioned.fill(
                  left: 25,
                  bottom: 25,
                  right: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Ответьте на 10 вопросов,\nи мы подберем нужный уход ',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Raleway'),
                      ),
                      Spacer(),
                      AppButton(text: 'Пройти тест ', buttonWhite: false)
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListProduct(
        products: stocks,
        title: 'Акции',
        imgLiner: 'assets/img/stocks/liner.png');
  }
}

import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/widgets/app_button.dart';
import 'package:flutter/material.dart';

class KatalogShop extends StatefulWidget {
  const KatalogShop({super.key});

  @override
  State<KatalogShop> createState() => _KatalogShopState();
}

class _KatalogShopState extends State<KatalogShop> {
  int selectedIndex = 0;

  void updateStatedIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  final List<String> _buttonTitle = [
    'Очищение',
    'Увлажнение',
    'Регенерация',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Padding(
                padding: EdgeInsets.all(10.0),
                child: ImageIcon(AssetImage('assets/icons/Vector.png')),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //
            children: [
              const Text(
                'Средства\nдля жирной кожи',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    letterSpacing: 1,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text(
                    '28 продуктов',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        letterSpacing: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        // Путь -> Filter
                      },
                      icon: const ImageIcon(
                          AssetImage('assets/icons/FadersHorizontal.png'))),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 12,
                  ),
                  itemCount: _buttonTitle.length,
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndex == index;
                    return AppButton(
                      text: _buttonTitle[index],
                      background:
                          isSelected ? Colors.black : AppColor.graySlider,
                      border: Colors.transparent,
                      textIsWhite: isSelected ? true : false,
                      radius: 11,
                      textSize: 16,
                      fontWeight: FontWeight.w500,
                      onPressed: () {
                        updateStatedIndex(index);
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

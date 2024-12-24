import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/data/list_menu_main.dart';
import 'package:cosmetics_app/widgets/app_button.dart';
import 'package:cosmetics_app/widgets/list_menu_widget.dart';
import 'package:flutter/material.dart';

class Katalog extends StatelessWidget {
  const Katalog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 63,
            ),
            SearchForm(),
            SizedBox(
              height: 40,
            ),
            ListMenuCatalog(),
            SizedBox(
              height: 50,
            ),
            QuestionWidget(),
          ],
        ),
      ),
    );
  }
}

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          hintText: 'Поиск ',
          hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Raleway',
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 13),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.0),
            child: ImageIcon(
              AssetImage('assets/icons/magnifyingGlass.png'),
              size: 24,
            ),
          ),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        ),
      ),
    );
  }
}

class ListMenuCatalog extends StatelessWidget {
  const ListMenuCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final listMenu = getListMenuMain();
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ListMenuWidget(
              listMenu: listMenu,
              fontSize: 20,
              onPressedd: () =>
                  Navigator.of(context).pushNamed('/katalog/type'),
            ),
          ],
        ));
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.backgroundQuestino,
          ),
          child: Stack(
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
              const Positioned.fill(
                  top: 24,
                  left: 24,
                  bottom: 24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Составим схему идеального \nдомашнего ухода',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Raleway'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Spacer(),
                      Text(
                        '10 вопросов о вашей коже',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Raleway'),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Spacer(),
                      AppButton(
                        text: 'Пройти тест ',
                        background: Colors.black,
                        border: Colors.black,
                        textIsWhite: true,
                        radius: 6,
                        textSize: 12,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

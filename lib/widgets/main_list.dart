import 'package:cosmetics_app/core/app_color.dart';
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

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
            decoration: BoxDecoration(
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
        Positioned(
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
        )
      ]),
    );
  }
}

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
      body: SizedBox(
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
                      image: AssetImage(_imgScroll[index]), fit: BoxFit.cover)),
            );
          },
        ),
      ),
    );
  }
}

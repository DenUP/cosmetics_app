import 'package:flutter/material.dart';

class MainList extends StatelessWidget {
  const MainList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              Image.asset('assets/img/slider/christinaMuse.png');
            },
          )
        ],
      ),
    ));
  }
}

import 'package:cosmetics_app/entity/list_menu.dart';
import 'package:flutter/material.dart';

class ListMenuWidget extends StatelessWidget {
  final List<ListMenu> listMenu;
  final double fontSize;
  final VoidCallback? onPressedd;
  const ListMenuWidget({
    super.key,
    required this.listMenu,
    required this.fontSize,
    this.onPressedd,
  });

  void NullCallback() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMenu.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            TextButton(
                onPressed: onPressedd ?? NullCallback,
                child: Text(
                  listMenu[index].title,
                  style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Raleway'),
                )),
            listMenu[index].isStocks == true
                ? Image.asset('assets/img/stocks/stock_purple.png')
                : const SizedBox(),
          ],
        );
      },
    );
  }
}

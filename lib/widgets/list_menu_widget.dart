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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      // itemExtent: 52,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: listMenu.length,
      itemBuilder: (context, index) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
                onPressed: onPressedd,
                child: Text(
                  listMenu[index].title,
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Raleway',
                  ),
                )),
            listMenu[index].isStocks == true
                ? Image.asset(
                    'assets/img/stocks/stock_purple.png',
                    width: MediaQuery.of(context).size.width / 12,
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }
}

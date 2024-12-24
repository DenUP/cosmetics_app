import 'package:cosmetics_app/core/app_color.dart';
import 'package:cosmetics_app/screen/katalog.dart';
import 'package:cosmetics_app/screen/main_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainList(),
    Katalog(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: School',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icons/house.png')),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/magnifyingGlass.png')),
                label: 'Каталог'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/icons/shoppingCartSimple.png')),
                label: 'Корзина'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icons/user.png')),
                label: 'Профиль'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed),
    );
  }
}

import 'package:cosmetics_app/data/list_menu_main.dart';
import 'package:cosmetics_app/widgets/list_menu_widget.dart';
import 'package:flutter/material.dart';

class TypeKosha extends StatelessWidget {
  const TypeKosha({super.key});

  @override
  Widget build(BuildContext context) {
    final listTypeKozhi = getListTypeKozhi();
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
        centerTitle: true,
        title: const Text('По типу кожи'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listTypeKozhi.length,
          itemBuilder: (context, index) {
            return ListTile(
              titleTextStyle: const TextStyle(
                letterSpacing: 1,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: 'Raleway',
              ),
              onTap: () {
                if (listTypeKozhi[index].title == 'Жирная') {
                  Navigator.pushNamed(context, '/katalog/type/zhirnay');
                }
              },
              title: Text(listTypeKozhi[index].title),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Каталог выбран
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}

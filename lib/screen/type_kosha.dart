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
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListMenuWidget(listMenu: listTypeKozhi, fontSize: 18),
          )
        ],
      ),
    );
  }
}

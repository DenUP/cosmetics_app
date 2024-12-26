import 'package:cosmetics_app/data/filter_list.dart';
import 'package:cosmetics_app/widgets/app_button.dart';
import 'package:flutter/material.dart';

class FilterShop extends StatelessWidget {
  const FilterShop({super.key});

  @override
  Widget build(BuildContext context) {
    final filterList = getFilterList();
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
        title: const Text('Фильтры'),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: filterList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  filterList[index].name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                trailing: Text(
                  filterList[index].value,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        title: Text(filterList[index].name),
                        content: Text(filterList[index].value)),
                  );
                },
              );
            },
          ),
          const Spacer(),
          SizedBox(
            height: 56,
            width: 326,
            child: AppButton(
              text: 'Применить фильтры',
              background: Colors.black,
              border: Colors.transparent,
              textIsWhite: true,
              radius: 9,
              textSize: 16,
              onPressed: () =>
                  Navigator.of(context).pushNamed('/katalog/type/zhirnay'),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

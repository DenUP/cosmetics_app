import 'package:cosmetics_app/core/app_color.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [TextButton(onPressed: () {}, child: Text('1231'))],
      ),
    );
  }
}

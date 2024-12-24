import 'package:cosmetics_app/screen/katalog.dart';
import 'package:cosmetics_app/screen/main_list.dart';
import 'package:cosmetics_app/screen/main_navigation.dart';
import 'package:cosmetics_app/screen/type_kosha.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MainNavigation(),
        '/main': (context) => const MainList(),
        '/katalog': (context) => const Katalog(),
        '/katalog/type': (context) => const TypeKosha(),
      },
    );
  }
}

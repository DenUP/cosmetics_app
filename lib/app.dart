import 'package:cosmetics_app/screen/main_list.dart';
import 'package:cosmetics_app/screen/main_navigation.dart';
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
      },
    );
  }
}

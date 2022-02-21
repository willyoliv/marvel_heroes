import 'package:flutter/material.dart';
import 'package:marvel_heroes/pages/home_page.dart';
import 'package:marvel_heroes/pages/info_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel heroes',
      theme: ThemeData(),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/info": (context) => const InfoPage(),
      },
    );
  }
}

import "package:flutter/material.dart";
import "package:nav_page/secondpage.dart";
import "./firstpage.dart";

void main() {
  runApp(const MyPage1());
}

class MyPage1 extends StatelessWidget {
  const MyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage()
      },
    );
  }
}

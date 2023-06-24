import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyWidget1());
}

@override
class MyWidget1 extends StatefulWidget {
  const MyWidget1({super.key});

  @override
  State<MyWidget1> createState() => _MyWidget1State();
}

class _MyWidget1State extends State<MyWidget1> {
  int count = 0;
  List<String> str = ["Hello", "Welcome", "Selfless", "Gamer"];

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(231, 227, 8, 8),
          title: const Text("Welcome to Project "),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              width: 400,
              height: 400,
              child: Column(children: [
                Text(
                  '$count',
                  style: const TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () => {increment()},
                        child: const Text("Plus")),
                    // const SizedBox(width: 20),
                    ElevatedButton(
                        onPressed: () => {decrement()},
                        child: const Text("Minus"))
                  ],
                ),
                const SizedBox(height: 230),
                BottomNavigationBar(items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: "Like"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings_applications),
                      label: "Settings"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.backspace), label: "Back")
                ]),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

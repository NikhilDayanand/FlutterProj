import "package:flutter/material.dart";
import "package:nav_page/secondpage.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "FirstPage",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
                Navigator.pushNamed(context, '/second');
              },
              child: const Text(
                "Click",
              ))
        ],
      )),
    );
  }
}

import "package:flutter/material.dart";
import "package:nav_page/thirdpage.dart";

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "SecondPage",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
              child: const Text(
                "Click",
              ))
        ],
      )),
    );
  }
}

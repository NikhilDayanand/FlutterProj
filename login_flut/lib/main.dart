import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Login")),
        drawer: Drawer(child: DrawApp()),
        body: ,
      )
      ,
    );
  }
}

class DrawApp extends StatelessWidget {
  DrawApp({super.key});
  TextEditingController abc = TextEditingController();
  void showMessage(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: abc,

              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Enter the name of city",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 50),
                ),
              ),
              // autofillHints: [AutofillHints.name],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              showMessage(abc.text);
            },
            child: Text("Click me"),
          ),
          // Text("Hi ${abc.text}"),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              // autofillHints: [AutofillHints.name, AutofillHints.name],
            ),
          )
        ],
      ),
    );
  }
}


class MyDisplay extends StatelessWidget {
  const MyDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: [Text()]),)
  }
}
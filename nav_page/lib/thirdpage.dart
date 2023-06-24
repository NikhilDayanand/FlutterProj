import "package:flutter/material.dart";
import "package:nav_page/firstpage.dart";

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<int> _number = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "ThirdPage",
            style: TextStyle(fontSize: 30),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _number.add(_number.length + 1);
              });
            },
            child: const Text(
              "Click",
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    tileColor: Colors.blue[300],
                    title: Text(_number[index].toString()),
                    subtitle: Text("Line ${_number[index]}"),
                    leading: const Icon(Icons.format_list_numbered_rtl),
                  ),
                );
              },
              itemCount: _number.length,
            ),
          )
        ],
      ),
    );
  }
}

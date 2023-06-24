import 'package:contact_app/contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phno = TextEditingController();

  List<Contact> contactList = [];

  int selectIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 10,
              controller: _phno,
              decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
                onPressed: () {
                  String name = _name.text.trim();
                  String phno = _phno.text.trim();
                  if (name.isNotEmpty && phno.isNotEmpty) {
                    setState(() {
                      _name.text = "";
                      _phno.text = "";
                      contactList.add(Contact(name: name, phnumber: phno));
                    });
                  }
                },
                child: const Text("Save")),
            ElevatedButton(
                onPressed: () {
                  String name = _name.text.trim();
                  String phno = _phno.text.trim();
                  if (name.isNotEmpty && phno.isNotEmpty) {
                    setState(() {
                      _name.text = "";
                      _phno.text = "";
                      contactList[selectIndex].name = name;
                      contactList[selectIndex].phnumber = phno;
                      selectIndex = -1;
                    });
                  }
                },
                child: const Text("Update"))
          ]),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => getDetails(index),
              itemCount: contactList.length,
            ),
          )
        ],
      ),
    );
  }

  Widget getDetails(int index) {
    return Card(
      child: ListTile(
          leading: CircleAvatar(child: Text(contactList[index].name[0])),
          title: Text(contactList[index].name),
          subtitle: Text(contactList[index].phnumber),
          trailing: SizedBox(
            width: 80,
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      _name.text = contactList[index].name;
                      _phno.text = contactList[index].phnumber;
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: const Icon(Icons.edit)),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        contactList.removeAt(index);
                      });
                    },
                    child: const Icon(Icons.delete))
              ],
            ),
          )),
    );
  }
}

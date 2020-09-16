import 'package:flutter/material.dart';

class Klimatic extends StatefulWidget {
  @override
  _KlimaticState createState() => _KlimaticState();
}

class _KlimaticState extends State<Klimatic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Klimatic"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint("test"),
            color: Colors.white,
          )
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "images/umbrella.png",
              height: 1200,
              width: 500,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
            child: Text(
              "Spokane",
              style: cityStyle(),
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle cityStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 22.9,
    fontStyle: FontStyle.italic,
  );
}

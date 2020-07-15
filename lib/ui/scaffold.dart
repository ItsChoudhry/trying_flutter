import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  void _onPress() {
    print("butts");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('fancy Day'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.send), onPressed: () => debugPrint("hello")),
          IconButton(icon: Icon(Icons.fiber_new), onPressed: _onPress),
        ],
      ),
    );
  }
}

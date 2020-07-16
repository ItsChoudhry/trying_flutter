import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  void _onPress() {
    print("butts");
  }

  Map<int, String> types = {0: "hey", 1: "thing", 2: "money"};

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
      backgroundColor: Colors.grey.shade100,
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Bonni',
                  style: TextStyle(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.deepOrange)),
              InkWell(
                child: Text('Button!'),
                onTap: () => debugPrint("onTapped"),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPress,
        backgroundColor: Colors.deepPurple,
        tooltip: 'up we go',
        child: Icon(Icons.call_made),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Hey'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new),
            title: Text('thing'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text('money'),
          )
        ],
        onTap: (int value) => debugPrint("idx ${types[value]}"),
      ),
    );
  }
}

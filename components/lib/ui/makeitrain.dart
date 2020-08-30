import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("make it rain"),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
                child: Text(
              'Get Rich!',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 29.9),
            )),
            Expanded(
              child: Center(
                child: Text(
                  '\$$_moneyCounter',
                  style: TextStyle(
                    color:
                        _moneyCounter > 10000 ? Colors.red : Colors.greenAccent,
                    fontSize: 46.9,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  color: Colors.red.shade500,
                  textColor: Colors.white70,
                  onPressed: _rainMoney,
                  child: Text(
                    "Let It Rain!",
                    style: TextStyle(
                      fontSize: 19.9,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

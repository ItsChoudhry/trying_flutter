import 'package:flutter/material.dart';

class CustomGesture extends StatelessWidget {
  final String title;
  CustomGesture({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        title: Text(title),
      ),
      body: Center(
        child: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("hello g"),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: Duration(
              hours: 0,
              minutes: 0,
              seconds: 0,
              milliseconds: 500,
              microseconds: 0),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(5.5),
        ),
        child: Text("first button"),
      ),
    );
  }
}

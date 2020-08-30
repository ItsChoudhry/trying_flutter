import 'package:flutter/material.dart';
import 'customloginform.dart';

class CustomLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Login";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: CustomLoginForm(),
      ),
    );
  }
}

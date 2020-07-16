import 'package:flutter/material.dart';
import 'ui/welcome_home.dart';
import 'ui/layout.dart';
import 'ui/scaffold.dart';
import 'ui/gesture.dart';

void main(List<String> args) {
  var title = 'gesture';
  runApp(MaterialApp(
    title: title,
    home: CustomGesture(title: title),
  ));
}

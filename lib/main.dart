import 'dart:convert';

import 'package:flutter/material.dart';
import 'ui/welcome_home.dart';
import 'ui/layout.dart';
import 'ui/scaffold.dart';
import 'ui/gesture.dart';
import 'ui/makeitrain.dart';
import 'ui/login.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  List _data = await getJSON();
  // print(_data[0]["body"]);
  // print(_data[0]["title"]);
  // for (var i = 0; i < _data.length; i++) {
  //   print("Data: ${_data[i]["title"]}");
  // }
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text("Json"),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int position) {
            return Column(
              children: [
                Divider(
                  height: 13.4,
                ),
                ListTile(
                  title: Text(
                    _data[position]["title"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(_data[position]["body"]),
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(_data[position]["id"].toString()),
                  ),
                  onTap: () =>
                      showTapMessage(context, _data[position]["title"]),
                )
              ],
            );
          },
          itemCount: _data.length,
          padding: const EdgeInsets.all(4.4),
        )),
  ));
}

void showTapMessage(BuildContext context, String message) {
  var alertDialog = AlertDialog(
    title: Text(message),
    actions: [
      FlatButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Text("OK"),
      )
    ],
  );
  showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      });
}

Future<List> getJSON() async {
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);
}

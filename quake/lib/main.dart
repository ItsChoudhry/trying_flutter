import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

Map _data;
List _features;
Future<void> main() async {
  _data = await getQuakes();
  _features = _data['features'];
  runApp(MaterialApp(
    title: "Quakes",
    home: Quakes(),
  ));
}

class Quakes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quakes"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(15.0),
          itemCount: _features.length,
          itemBuilder: (BuildContext context, int position) {
            if (position.isOdd) return Divider();
            final index = position ~/ 2;
            DateFormat format = DateFormat.yMMMd("en_US").add_jm();
            String date = format.format(DateTime.fromMicrosecondsSinceEpoch(
                _features[index]['properties']['time'] * 1000,
                isUtc: true));
            return ListTile(
              title: Text(
                "$date",
                style: TextStyle(
                    fontSize: 15.5,
                    color: Colors.orange,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Place: ${_features[index]['properties']['place']}",
                style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  "${_features[index]['properties']['mag']}",
                  style: TextStyle(
                      fontSize: 16.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              onTap: () {
                _showAlertMessage(
                    context, "${_features[index]['properties']['title']}");
              },
            );
          },
        ),
      ),
    );
  }

  void _showAlertMessage(BuildContext context, String message) {
    var alert = AlertDialog(
      title: Text("Quakes"),
      content: Text(message),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        )
      ],
    );
    showDialog(context: context, child: alert);
  }
}

Future<Map> getQuakes() async {
  String apiUrl =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson";
  http.Response response = await http.get(apiUrl);
  return json.decode(response.body);
}

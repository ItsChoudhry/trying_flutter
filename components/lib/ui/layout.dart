import 'package:flutter/material.dart';

class CustomColumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'First',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'second',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue),
            ),
            Container(
              color: Colors.deepOrange.shade300,
              alignment: Alignment.center,
              child: Text(
                'boof',
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        )
        // child: Text(
        //   'container',
        //   textDirection: TextDirection.ltr,
        //   style: TextStyle(
        //       color: Colors.white, fontWeight: FontWeight.w900, fontSize: 25),
        // )
        );
  }
}

class CustomRows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(25),
        color: Colors.lime[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'first',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Text(
              ' second',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            const Expanded(
              child: const Text('third'),
            )
          ],
        ));
  }
}

class CustomStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.red[100],
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Text(
              'First ',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Text(
              ' second',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Text(
              ' third',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ],
        ));
  }
}

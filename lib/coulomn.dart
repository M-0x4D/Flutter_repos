import 'package:flutter/material.dart';
import 'models/model.dart';
import 'products.dart';
import 'mywidget.dart';

class Coloumns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Coloumnc());
  }
}

class Coloumnc extends StatefulWidget {
  @override
  _CMyHomePageState createState() {
    return _CMyHomePageState();
  }
}

class _CMyHomePageState extends State<Coloumnc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Column Example"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.red),
              child: Text(
                "React.js",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.red),
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.yellowAccent, fontSize: 20),
              ),
            ),
          ]),
    );
  }
}

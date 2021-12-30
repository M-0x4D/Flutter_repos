import 'package:flutter/material.dart';

class Dss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Play());
  }
}

class Play extends StatefulWidget {
  @override
  Paza createState() {
    return Paza();
  }
}

class Paza extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Row Example"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "hello",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "Flutter",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                )
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "hello",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "Flutter",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                )
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "hello",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "Flutter",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  child: Text(
                    "welcome",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 25),
                  ),
                )
              ])
        ]),
      ),
    );
  }
}

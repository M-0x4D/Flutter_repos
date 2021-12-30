import 'package:flutter/material.dart';
import 'package:imagepicker/coulomn.dart';
import 'package:imagepicker/products.dart';
import 'package:imagepicker/snake_game/game.dart';
import 'coulomn.dart';

class AppBarClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("welcome"),
            actions: <Widget>[
              Icon(Icons.account_tree),
              Icon(Icons.navigation),
              Icon(Icons.notification_important),
              IconButton(
                  icon: Icon(Icons.ac_unit), onPressed: () => print("object"))
            ],
            backgroundColor: Colors.blue),
        drawer: Drawer(
            child: SafeArea(
                child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("drawer header")),
            Text("data"),
            SizedBox(
              height: 19,
            ),
            Text("data2")
          ],
        ))),
        body: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Coloumns()));
              },
              child: Text("data"),
              color: Colors.blue,
            ),
            Expanded(
              child: Container(
                child: Text(
                  "first data",
                  style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.blue,
                      fontSize: 50),
                ),
                color: Colors.red,
              ),
            ),
            Expanded(child: Container(child: Text("data")))
          ],
          verticalDirection: VerticalDirection.down,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}

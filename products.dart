import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Appdata extends StatelessWidget {
  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Complex layout example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Widget> lst = <Widget>[
    Card(
      child: Text("data"),
    ),
    ListTile(leading: Text("data"), onTap: () => print("object")),
    Image.network(
      'https://picsum.photos/250?image=9',
    )
  ];

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product List")),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
              name: "iPhone",
              description: "iPhone is the top branded phone ever",
              price: 55000,
            ),
            ProductBox(
              name: "Android",
              description: "Android is a very stylish phone",
              price: 10000,
            ),
            ProductBox(
              name: "Tablet",
              description: "Tablet is a popular device for official meetings",
              price: 25000,
            ),
            ProductBox(
              name: "Laptop",
              description: "Laptop is most famous electronic device",
              price: 35000,
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("data"),
              subtitle: Text("mr mohamed "),
              trailing: Text("welcome"),
              isThreeLine: true,
              autofocus: true,
              onTap: () => print("object"),
            )
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price})
      : super(key: key);
  final String name;
  final String description;
  final int price;

  //final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 110,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              // Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

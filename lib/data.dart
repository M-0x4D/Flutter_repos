import 'dart:convert';

import 'package:path/path.dart';

import 'models/model.dart';
import 'main.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class data extends StatelessWidget {
  List<usermodel> lst = <usermodel>[];
  Future getusers() async {
    lst.clear();
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var res = await http.get(url);
    var x = json.decode(res.body);

    //add data in usermodel object then add it in lst
    for (var i in x) {
      usermodel mod = usermodel(
        id: i["id"],
        name: i["name"],
        email: i["email"],
      );
      lst.add(mod);
    }
//print lst data
    // for (var n in lst) {
    //   print(n.name);
    // }
    // print(lst.map((e) => e.email));

    return lst;
  }

  //print(lst);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello me mohamed"),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.navigation),
                  color: Colors.white,
                  onPressed: () {
                    getusers();
                  },
                )
              ],
            )
          ],
        ),
        body: FutureBuilder(
          future: getusers(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (item, i) {
                    return Card(
                      color: Colors.blue,
                      child: ListTile(

                        leading: Text(snapshot.data[i].id.toString()),
                        title: Text(snapshot.data[i].name),
                        onTap: () => print(lst[i].email),
                        trailing: Text(snapshot.data[i].email),
                      ),
                      margin: EdgeInsets.all(10),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    );
                  });
          },
        ),
      ),
    );
  }
}

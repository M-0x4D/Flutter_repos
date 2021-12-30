import 'package:sqflite/sqflite.dart';

import 'sqflite_file.dart';
import 'package:flutter/material.dart';
import 'models/sqlflite_model.dart';

class Sqlflite_show extends StatelessWidget {
 // get database => Sqlflite_class().database;

  //Sqlflite_class d;


  List lst = [];
  Future getdata()async
  {
    lst.clear();
    Database database = await openDatabase('MyData.db', version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE Ftbl (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
        });
    print("database created...........");
    print("table created....................");


    List<Map> list = await database.rawQuery('SELECT * FROM Ftbl ');


    Sqlflite_model sql;

    for(var i in list)
    {
      sql = Sqlflite_model(name: i['name'],value: i["value"],num: i["num"],);

      lst.add(sql);



    }

    return lst;
  }

  @override
  Widget build(BuildContext context) {
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

                    Navigator.pop(context);



                  },
                )
              ],
            )
          ],
        ),
        body: FutureBuilder(
          future: getdata(),
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

                        leading: Text(snapshot.data[i].name),
                        title: Text(snapshot.data[i].value.toString()),
                        onTap: () {},
                        trailing: Text(snapshot.data[i].num.toString()),
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

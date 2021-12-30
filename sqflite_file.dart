

import 'package:imagepicker/data.dart';
import 'package:imagepicker/main.dart';
import 'package:flutter/src/widgets/navigator.dart';

import 'models/sqlflite_model.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'sqlflite_show.dart';

class Sqlflite_class extends StatelessWidget
{
  final _formKey = GlobalKey<FormState>();
  var name_controller = TextEditingController();
  var value_controller = TextEditingController();
  var num_controller = TextEditingController();

  Database database;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(routes: <String, WidgetBuilder>{
      //'/': (BuildContext context) => MyApp(),
      '/first': (BuildContext context) => Sqlflite_show(),
    },home: Scaffold(
      appBar: AppBar(title: Text("Welcome to Sqlflite"),
      leading: IconButton(icon: Icon(Icons.backup), onPressed: ()async
      {


        // open the database
        // database = await openDatabase('MyData.db', version: 1,
        //     onCreate: (Database db, int version) async {
        //
        //       print("database opened...........");
        //       // When creating the db, create the table
        //       await db.execute(
        //           'CREATE TABLE Ftbl (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
        //
        //       print("table created....................");
        //     });



// Insert some records in a transaction



        // Get the records
        // List<Map> list = await database.rawQuery('SELECT * FROM Ftbl ');
        //
        // Sqlflite_model sql;
        // List lst = [];
        // for(var i in list)
        //   {
        //     sql = Sqlflite_model(name: i['name'],value: i["value"],num: i["num"],);
        //
        //     lst.add(sql);
        //
        //   }
        // print(lst[3].name);
        //
        // // List<Map> expectedList = [
        // //   {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
        // //   {'name': 'another name', 'id': 2, 'value': 12345678, 'num': 3.1416}
        // // ];
        // print(list);
      //  print(expectedList);

        // we are here ............................................
    //  await CreateDatabase();
    // await Insertdatabase();





     }
     ),),
      body:Form(child:Column(children: [
        TextFormField(controller: name_controller,decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'Write data here ',
        labelText: 'Name *',
      ), validator: (value){
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      }, ),
        SizedBox(height: 20,),
        TextFormField(controller: value_controller,decoration: const InputDecoration(
        icon: Icon(Icons.integration_instructions_sharp),
        hintText: 'Write data here ',
        labelText: 'value *',
      ),) ,
        SizedBox(height: 20,),
        TextFormField( controller: num_controller, decoration: const InputDecoration(
        icon: Icon(Icons.wifi_calling),
        hintText: 'write data here',
        labelText: 'num *',
      ),),SizedBox(height: 20,) ,
        ElevatedButton(onPressed: ()async
        {

          // open the database
          database = await openDatabase('MyData.db', version: 1,
              onCreate: (Database db, int version) async {

                print("database opened...........");
                // When creating the db, create the table
                // await db.execute(
                //     'CREATE TABLE Ftbl (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');

                //print("table created....................");
              });
          //insert in database
          await database.transaction((txn) async {
            int id1 = await txn.rawInsert(
                'INSERT INTO Ftbl(name, value, num) VALUES("${name_controller.text}", ${value_controller.text}, ${num_controller.text})');
            print('inserted1: $id1');
            // int id2 = await txn.rawInsert(
            //     'INSERT INTO Ftbl(name, value, num) VALUES(?, ?, ?)',
            //     ['another name', 12345678, 3.1416]);
            // print('inserted2: $id2');
          });


        }, child: Text("Insert ")),
        // ElevatedButton(onPressed: ()
        // {
        //  // Navigator.pushNamed(context, '/first');
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) =>  Sqlflite_show()));
        //  // Navigator.pushNamed(context, "Sqlflite_show");
        //
        //  // Navigator.popAndPushNamed(context, 'Sqlflite_show');
        //  // Navigator.pushNamed(context, "/second");
        //       //Navigator.of(context).pushNamed('/');
        //
        // },child: Text("get data"),)
        Builder(
          builder: (context) => Center(
            child: ElevatedButton(onPressed: ()
            {

              // Navigator.pushNamed(context, '/first');
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Sqlflite_show()));
              // Navigator.pushNamed(context, "Sqlflite_show");

              // Navigator.popAndPushNamed(context, 'Sqlflite_show');
              // Navigator.pushNamed(context, "/second");
              //Navigator.of(context).pushNamed('/');

            },child: Text("get data"),),
          ),
        ), ],)) ,),);
  }

}
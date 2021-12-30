import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:imagepicker/models/api_products_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Api_Products extends StatelessWidget {

 Future getdata()async
 {
   //List<api_products_model> lstpro = <api_products_model>[];
   List<api_products_model> lst = <api_products_model>[];
var query={'limit':5};
     lst.clear();
     //var sata = Uri.http("https://fakestoreapi.com/products","");
     var url = Uri.parse("https://fakestoreapi.com/products");
     var res = await http.get(url);
     var x = json.decode(res.body);
print(x);
     //add data in usermodel object then add it in lst
     // for (var i in x) {
     //   api_products_model mod = api_products_model(
     //     id: i["id"],
     //     category: i["category"],
     //     image: i["image"],
     //     title: i["title"],
     //     description: i["descrition"],
     //     price: i["price"],
     //   );
     //   lst.add(mod);
     // }
     //print(lst);




   //////////////////////////////////////////////////////////////////
  // var dio = Dio();

  // var result = await dio.get("https://fakestoreapi.com/products");

 //  var xx = json.decode(result.data);
  // print(result.data);

  //  for(var i in result.data)
  //    {
  //    api_products_model model = api_products_model(id: i["id"],category: i["category"],description: i["description"],
  //        price: i["price"],title: i["title"]);
  //
  //    lstpro.add(model);
  //    }
  //
  //  return lstpro;


 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(),body: ElevatedButton(onPressed: ()=>getdata(),),));
  }
}

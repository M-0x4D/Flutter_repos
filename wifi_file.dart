
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:wifi_info_flutter/wifi_info_flutter.dart';

class Wifi_class extends StatefulWidget {
  @override
  _Isolate_State createState() => _Isolate_State();
}

class _Isolate_State extends State<Wifi_class> {
int counter=0;
var wifiBSSID;
var wifiIP;
var wifiName;

Future wifidata()async
{
   wifiBSSID = await WifiInfo().getWifiBSSID();
   wifiIP = await WifiInfo().getWifiIP();
   wifiName = await WifiInfo().getWifiName();


 //print('${wifiBSSID}');
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(color: Colors.black,
      home: Scaffold(backgroundColor: Colors.black,body: SafeArea(
        child: Column(children: [Text("${wifiIP.toString()} \n $wifiBSSID \n $wifiName ",style: TextStyle(color: Colors.white),) , Center(
          child: FloatingActionButton(backgroundColor: Colors.blue,child: Text("click"),onPressed: (){setState(() {
            wifidata();
          });},),
        )],),
      ),),
    );
  }
}



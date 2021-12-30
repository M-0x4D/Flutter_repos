import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
class Hide_Status extends StatefulWidget {
  @override
  _Hide_StatusState createState() => _Hide_StatusState();
}

class _Hide_StatusState extends State<Hide_Status> {

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIOverlays([]);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(backgroundColor: Colors.black,));
  }
}

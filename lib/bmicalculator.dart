import 'package:flutter/material.dart';

class BMIcalculator extends StatefulWidget {
  @override
  _BMIcalculatorState createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {

  double data=20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("BMI CALCULATOR"),),body: Column(children: [
      Expanded(child:Row(children: [Expanded(child: Container(child: Column(children: [Text("data")],))),Expanded(child: Container(child: Column(children: [Text("data")],)))],),),
      Expanded(child: Column(children: [Text("${data.round()}"),SizedBox(height: 20,),Text("name"),Slider(value: data.toDouble(),min: 10,max: 220, onChanged: (value){setState((){setState(() {
        data = value;
      });});})],),),
      Expanded(child: Container(color: Colors.green,),),
      Container(color: Colors.blue,width: double.infinity,child: MaterialButton(onPressed: (){},color: Colors.yellowAccent,child: Text("CALCULATE"),))],),),);
  }
}







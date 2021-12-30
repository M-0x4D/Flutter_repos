import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

// void main() {
//    WidgetsFlutterBinding.ensureInitialized();
//  FlutterBackgroundService.initialize(onStart);

//   runApp(Back());
// }

void onStart() {
  WidgetsFlutterBinding.ensureInitialized();
  final service = FlutterBackgroundService();
  service.onDataReceived.listen((event) {
    if (event["action"] == "setAsForeground") {
      print("object");
      service.setForegroundMode(true);
      return;
    }

    if (event["action"] == "setAsBackground") {
      service.setForegroundMode(false);
    }

    if (event["action"] == "stopService") {
      service.stopBackgroundService();
    }
  });

  // bring to foreground
  service.setForegroundMode(true);
  Timer.periodic(Duration(seconds: 1), (timer) async {
    if (!(await service.isServiceRunning())) timer.cancel();
    service.setNotificationInfo(
      title: "My App Service",
      content: "Updated at ${DateTime.now()}",
    );

    service.sendData(
      {"current_date": DateTime.now().toIso8601String()},
    );
  });
}

class Back extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Back> {
  String text = "Stop Service";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Service App'),
        ),
        body: Column(
          children: [
            StreamBuilder<Map<String, dynamic>>(
              stream: FlutterBackgroundService().onDataReceived,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                else
                  {
                final data = snapshot.data;
                DateTime date = DateTime.tryParse(data["current_date"]);
                return Text(date.toString());

                  }
              },
            ),
            ElevatedButton(
              child: Text("Foreground Mode"),
              onPressed: () {
               // FlutterBackgroundService().setAutoStartOnBootMode(true);
                FlutterBackgroundService()
                    .sendData({"action": "setAsForeground"});
                for(var i=0 ; i<100;i++)
                {
                  print("data $i");
                  sleep(Duration(seconds:1));
                }

              },
            ),
            ElevatedButton(
              child: Text("Background Mode"),
              onPressed: () {
                FlutterBackgroundService()
                    .sendData({"action": "setAsBackground"});
                for(var i=0 ; i<100;i++)
                {
                  print("data $i");
                  sleep(Duration(seconds:1));
                }

              },
            ),
            ElevatedButton(
              child: Text(text),
              onPressed: () async {
                var isRunning =
                    await FlutterBackgroundService().isServiceRunning();
                if (isRunning) {
                  FlutterBackgroundService().sendData(
                    {"action": "stopService"},
                  );
                } else {
                  FlutterBackgroundService.initialize(onStart);
                }
                if (!isRunning) {
                  text = 'Stop Service';
                } else {
                  text = 'Start Service';
                }
                setState(() {});
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FlutterBackgroundService().sendData({
              "hello": "world",
            });
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}

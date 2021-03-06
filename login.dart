import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () => print("object"),
                child: Text("Log In"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity,
                      50), // double.infinity is the width and 30 is the height
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Don't have an account ?"),
                  TextButton(
                      onPressed: () {
                        print("object");
                      },
                      child: Text("register"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

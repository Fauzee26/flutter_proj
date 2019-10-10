import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TampilanUtama(),
    );
  }
}

class TampilanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/img.png'),
                radius: 100,
              ),
              Text(
                "Nama",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              ListTile(
                title: Text("hilmy2602@gmail.com"),
                leading: Icon(
                  Icons.email
                ),
              ),
              ListTile(
                title: Text("+62 81234567890"),
                leading: Icon(
                    Icons.phone
                ),
              ),
            ],
        ),
      ),
    );
  }
}

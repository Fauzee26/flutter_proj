
import 'package:flutter/material.dart';

class TampilanPagi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dzikir Pagi"),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),

        ],
      ),
    );
  }
}

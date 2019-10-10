import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TampilanUtama(),
    );
  }
}

class TampilanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route 1"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("route 2"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TampilanKedua()));
            }),
      ),
    );
  }
}

class TampilanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Route 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              child: Text("route 2"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TampilanKetiga()));
              }),
          RaisedButton(
              child: Text("route 1"),
              onPressed: () {
                Navigator.pop(context);
              }),
          RaisedButton(
              child: Text("route list"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TampilanList()));
              })
        ],
      ),
    );
  }
}

class TampilanList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hewan"),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            "Ayam",
            textAlign: TextAlign.center,
          ),
          Text(
            "Bebek",
            textAlign: TextAlign.center,
          ),
          Text(
            "Buaya",
            textAlign: TextAlign.center,
          ),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text("Domba"),
            subtitle: Text("hewan yg tersesat"),
          ),
          Text(
            "Domba",
            textAlign: TextAlign.center,
          ),
          Text(
            "Elang",
            textAlign: TextAlign.center,
          ),
          Text(
            "Ikan",
            textAlign: TextAlign.center,
          ),
          Text(
            "Gorilla",
            textAlign: TextAlign.center,
          ),
          Text(
            "Kucing",
            textAlign: TextAlign.center,
          ),
          Text("Cicak"),
        ],
      ),
    );
  }
}

class TampilanKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route 3"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text("route 2"),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

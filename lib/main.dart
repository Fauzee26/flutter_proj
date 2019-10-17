import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TampilanPagi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var teksWaktuDoa = TextStyle(
        fontFamily: "arial",
        color: Colors.white,
        fontSize: 40.0,
        fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Dzikir",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Pagi & Petang"),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, TampilanPagi());
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "http://wallsdesk.com/wp-content/uploads/2016/11/Morning-HD-Background-.jpg"),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Pagi",
                          style: teksWaktuDoa,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              height: 250.0,
              child: Stack(
                children: <Widget>[
                  backgroundImage(
                      "https://wallup.net/wp-content/uploads/2017/11/22/411126-lake-afternoon-748x468.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Petang",
                        style: teksWaktuDoa,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: NetworkImage(imageUrl))),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}

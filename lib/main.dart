import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ilmuan Islam"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/1983_CPA_5426_%281%29.png/250px-1983_CPA_5426_%281%29.png",
              "Muḥammad bin Mūsā al-Khawārizmī",
              "Muḥammad bin Mūsā al-Khawārizmī (bahasa Arab: محمد بن موسى الخوارزمي‎) adalah seorang ahli dalam bidang matematika, astronomi, astrologi, dan geografi yang berasal dari Persia. Lahir sekitar tahun 780 di Khwārizm (sekarang Khiva, Uzbekistan) dan wafat sekitar tahun 850 di Baghdad. Hampir sepanjang hidupnya, ia bekerja sebagai dosen di Sekolah Kehormatan di Baghdad yang didirikan oleh Khalifah Bani Abbasiyah Al-Ma'mun, tempat ia belajar ilmu alam dan matematik, termasuk mempelajari terjemahan manuskrip Sanskerta dan Yunani. Buku pertamanya, al-Jabar, adalah buku pertama yang membahas solusi sistematik dari linear dan notasi kuadrat. Sehingga ia disebut sebagai Bapak Aljabar. Al-Khwārizmī juga berperan penting dalam memperkenalkan angka Arab melalui karya Kitāb al-Jam’a wa-l-tafrīq bi-ḥisāb al-Hind yang kelak diadopsi sebagai angka standar yang dipakai di berbagai bahasa serta kemudian diperkenalkan sebagai Sistem Penomoran Posisi Desimal di dunia Barat pada abad ke 12. Ia merevisi dan menyesuaikan Geografi Ptolemeus sebaik mengerjakan tulisan-tulisan tentang astronomi dan astrologi."),
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/3/33/Iranian_Farabi.jpg",
              "al farabi",
              "Abū Nasir Muhammad bin al-Farakh al-Fārābi' (870-950, Bangsa Turk: Farabi, Bahasa Persia: محمد فارابی ) singkat Al-Farabi adalah ilmuwan dan filsuf Islam berasal dari Farab, Kazakhstan.[1] Ia juga dikenal dengan nama Abū Nasir al-Fārābi (dalam beberapa sumber ia dikenal sebagai Abu Nasr Muhammad Ibn Muhammad Ibn Tarkhan Ibn Uzalah Al- Farabi, juga dikenal di dunia barat sebagai Alpharabius, Al-Farabi, Farabi, dan Abunasir."),
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg/220px-033-Earth-could-not-answer-nor-the-Seas-that-mourn-q75-829x1159.jpg",
              "Umar Khayyām",
              "'Umar Khayyām (18 Mei 1048 – 4 Desember 1131, dalam bahasa Persia عمر خیام), dilahirkan di Nishapur, Iran. Nama aslinya adalah Ghiyātsuddin Abulfatah 'Umar bin Ibrahim Khayyāmi Nisyābūri (غياث الدين ابو الفتح عمر بن ابراهيم خيام نيشابوري). Khayyām berarti 'pembuat tenda' dalam bahasa Persia."),

        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String nama, String deskripsi) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image(
            fit: BoxFit.fill,
            image: NetworkImage(urlGambar),
            height: 300.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Text(
              nama,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              deskripsi,
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}

//class TampilanUtama extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Route 1"),
//      ),
//      body: Center(
//        child: RaisedButton(
//            child: Text("route 2"),
//            onPressed: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => TampilanKedua()));
//            }),
//      ),
//    );
//  }
//}
//
//class TampilanKedua extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text("Route 2"),
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          RaisedButton(
//              child: Text("route 2"),
//              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => TampilanKetiga()));
//              }),
//          RaisedButton(
//              child: Text("route 1"),
//              onPressed: () {
//                Navigator.pop(context);
//              }),
//          RaisedButton(
//              child: Text("route list"),
//              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => TampilanList()));
//              })
//        ],
//      ),
//    );
//  }
//}
//
//class TampilanList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("List Hewan"),
//      ),
//      body: ListView(
//        children: <Widget>[
//          Text(
//            "Ayam",
//            textAlign: TextAlign.center,
//          ),
//          Text(
//            "Bebek",
//            textAlign: TextAlign.center,
//          ),
//          Text(
//            "Buaya",
//            textAlign: TextAlign.center,
//          ),
//          ListTile(
//            leading: Icon(Icons.pets),
//            title: Text("Domba"),
//            subtitle: Text("hewan yg tersesat"),
//          ),
//          Text(
//            "Domba",
//            textAlign: TextAlign.center,
//          ),
//          Text(
//            "Elang",
//            textAlign: TextAlign.center,
//          ),
//          Text(
//            "Ikan",
//            textAlign: TextAlign.center,
//          ),
//          Text(
//            "Gorilla",
//            textAlign: TextAlign.center,
//          ),
//          Text(
//            "Kucing",
//            textAlign: TextAlign.center,
//          ),
//          Text("Cicak"),
//        ],
//      ),
//    );
//  }
//}
//
//class TampilanKetiga extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Route 3"),
//      ),
//      body: Column(
//        children: <Widget>[
//          RaisedButton(
//              child: Text("route 2"),
//              onPressed: () {
//                Navigator.pop(context);
//              })
//        ],
//      ),
//    );
//  }
//}

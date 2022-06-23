import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/arcelikklima/dis%C3%BCnite.dart';
import 'package:flutterfirebaseqrcodescan/arcelikklima/ic%C3%BCnite.dart';
import 'package:flutterfirebaseqrcodescan/arcelikklima/klimacalismasi.dart';
import 'package:flutterfirebaseqrcodescan/arcelikklima/ozellikler.dart';

import '../scanqr.dart';

// her sayfaya yazmamak için bu kısım oluşturuldu

class Klima extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Klima();
}

class _Klima extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ekrana sığmazsa yukarı aşağı kaydırmak için
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("resim/air-conditioning.png"),
                    width: 90,
                    height: 85,
                  ),
                  Text(
                    "Arçelik Klima",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Klima İç Ünite'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (cxt) => IcUnite()));
            },
          ),
          ListTile(
            title: Text('Klima Dış Ünite'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (cxt) => DisUnite()));
            },
          ),
          ListTile(
            title: Text('Klima Özellikleri'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (cxt) => KlimaOzellik()));
            },
          ),
          ListTile(
            title: Text('Klima Çalışması'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (cxt) => KlimaCalismasi()));
            },
          ),
          ListTile(
            title: Text('QR Kodu Tarama Sayfası'),
            trailing: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (cxt) => ScanScreen()));
            },
          ),
        ],
      ),
    );
  }
}

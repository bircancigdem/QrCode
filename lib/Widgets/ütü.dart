import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/arcelik%C3%BCt%C3%BC/buharl%C4%B1.dart';
import 'package:flutterfirebaseqrcodescan/arcelik%C3%BCt%C3%BC/genelbakis.dart';
import 'package:flutterfirebaseqrcodescan/arcelik%C3%BCt%C3%BC/kuru.dart';
import 'package:flutterfirebaseqrcodescan/arcelik%C3%BCt%C3%BC/sudeposunundoldurulmas%C4%B1.dart';

import '../scanqr.dart';

// her sayfaya yazmamak için bu kısım oluşturuldu

class Utu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Utu();
}

class _Utu extends State {
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
                    image: AssetImage("resim/iron.png"),
                    width: 90,
                    height: 85,
                  ),
                  Text(
                    "Arçelik Ütü",
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
            title: Text('Ütü Genel Bakış'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (cxt) => UtuGenelBakis()));
            },
          ),
          ListTile(
            title: Text('Su Deposunun Doldurulması'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (cxt) => Sudeposu()));
            },
          ),
          ExpansionTile(
            title: Text('Ürünün Çalıştırılması'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Buharlı Ütüleme'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cxt) => BuharliUtuleme()));
                },
              ),
              ListTile(
                title: Text('Kuru Ütüleme'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cxt) => KuruUtuleme()));
                },
              ),
            ],
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

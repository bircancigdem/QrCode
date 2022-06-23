import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/arcelikbuzdolabi/buzdolabibolmeleri.dart';
import 'package:flutterfirebaseqrcodescan/arcelikbuzdolabi/derindondurucubilgileri.dart';
import 'package:flutterfirebaseqrcodescan/arcelikbuzdolabi/gidalarinyerlestirilmesi.dart';
import 'package:flutterfirebaseqrcodescan/arcelikbuzdolabi/gostergepaneli.dart';
import 'package:flutterfirebaseqrcodescan/arcelikbuzdolabi/otomatikbuzmakinasi.dart';
import 'package:flutterfirebaseqrcodescan/scanqr.dart';

// her sayfaya yazmamak için bu kısım oluşturuldu

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
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
                    image: AssetImage("resim/fridge.png"),
                    width: 90,
                    height: 85,
                  ),
                  Text(
                    "Arçelik No Frost Buzdolabı",
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
            title: Text('Buzdolabı Bölmeleri'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (cxt) => Buzdolabibolmeleri()));
            },
          ),
          ExpansionTile(
            title: Text('Ürünün Kullanımı'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Gösterge Paneli'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cxt) => gostergepaneli()));
                },
              ),
              ListTile(
                title: Text('Derin Dondurucu Bilgileri'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (cxt) => Derindondurucubilgileri()));
                },
              ),
              ListTile(
                title: Text('Gıdaların yerleştirilmesi'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (cxt) => Gidalarinyerlestirilmesi()));
                },
              ),
              ListTile(
                title: Text('Otomatik Buz Makinası'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (cxt) => Otomatikbuzmakinasi()));
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

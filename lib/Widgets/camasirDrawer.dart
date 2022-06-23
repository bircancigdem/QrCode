import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/arcelikcamasirmakinesi/camasirlerinayrilmasi.dart';
import 'package:flutterfirebaseqrcodescan/arcelikcamasirmakinesi/genelgorunum.dart';
import 'package:flutterfirebaseqrcodescan/arcelikcamasirmakinesi/kontrolpaneli.dart';

import '../scanqr.dart';

// her sayfaya yazmamak için bu kısım oluşturuldu

class camasirDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _camasirDrawerState();
}

class _camasirDrawerState extends State {
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
                    image: AssetImage("resim/camasirmakinasi.png"),
                    width: 90,
                    height: 85,
                  ),
                  Text(
                    "Arçelik Çamaşır Makinesi",
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
            title: Text('Genel Görünüm'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Genelgorunum()));
            },
          ),
          ListTile(
            title: Text('Kontrol Paneli'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Kontrolpaneli()));
            },
          ),
          ListTile(
            title: Text('Çamaşırların Ayrılması'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Camasirlarinayrilmasi()));
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

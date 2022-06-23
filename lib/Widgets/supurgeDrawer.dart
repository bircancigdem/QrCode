import 'package:flutter/material.dart';

import '../arceliksupurge/cihazinteknikozellikleri.dart';
import '../arceliksupurge/filtretemizleme.dart';
import '../arceliksupurge/montaj.dart';
import '../arceliksupurge/tozhaznesi.dart';
import '../scanqr.dart';

// her sayfaya yazmamak için bu kısım oluşturuldu

class supurgeDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _supurgeDrawerState();
}

class _supurgeDrawerState extends State {
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
                    image: AssetImage("resim/supurge.png"),
                    width: 90,
                    height: 85,
                  ),
                  Text(
                    "Arçelik Elektrikli Süpürge",
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
            title: Text('Cihazın Teknik Özellikleri'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cihazinteknikozellikleri()));
            },
          ),
          ExpansionTile(
            title: Text('Cihazın Kullanımı'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Toz Haznesi'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tozhaznesi()));
                },
              ),
              ListTile(
                title: Text('Cihazın Montajı'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Montaj()));
                },
              ),
              ListTile(
                title: Text('Filtrenin Temizlenmesi'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Filtretemizleme()));
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

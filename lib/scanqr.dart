import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutterfirebaseqrcodescan/arcelikbuzdolabi/buzdolabibolmeleri.dart';
import 'package:flutterfirebaseqrcodescan/arcelikcamasirmakinesi/genelgorunum.dart';
import 'package:flutterfirebaseqrcodescan/arcelikklima/icünite.dart';
import 'package:flutterfirebaseqrcodescan/arceliksupurge/cihazinteknikozellikleri.dart';
import 'package:flutterfirebaseqrcodescan/arcelikütü/genelbakis.dart';
import 'package:flutterfirebaseqrcodescan/auth.dart';
import 'package:flutterfirebaseqrcodescan/login.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  late double height, width;
  late String qrString;
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("QR Kod Tarama"),
      ),
      body: Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            new Container(
              child: Image.asset("resim/qr.jpeg", width: 400, height: 400),
            ),
            new Container(
                child: (SizedBox(
              width: 250,
              height: 80,
              child: TextButton.icon(
                onPressed: scanQR,
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: Text(
                  "Tara",
                  style: TextStyle(fontSize: 30),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ))),
          ])
          //alignment: Alignment(0.0, 0.7),

          ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Divider(),
            ListTile(
              title: Text('Çıkış yap'),
              onTap: () {
                _authService.signOut();

                Navigator.push(
                    context, MaterialPageRoute(builder: (cxt) => LoginPage()));
              },
              leading: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          if (value == 'Arçelik No Frost Buzdolabı 270482 MI') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => Buzdolabibolmeleri(),
              ),
            );
          } else if (value == 'Arçelik Çamaşır Makinesi') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => Genelgorunum(),
              ),
            );
          } else if (value == 'Arçelik Ütü') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => UtuGenelBakis(),
              ),
            );
          } else if (value == 'Arçelik Klima') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => IcUnite(),
              ),
            );
          } else if (value == 'Arçelik Elektrikli Süpürge') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => Cihazinteknikozellikleri(),
              ),
            );
          }
        });
      });
    } catch (e) {
      setState(() {
        qrString = "unable to read the qr";
      });
    }
  }
}

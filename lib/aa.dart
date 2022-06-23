import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/auth.dart';
import 'package:flutterfirebaseqrcodescan/login.dart';
import 'package:flutterfirebaseqrcodescan/scanqr.dart';
import 'package:flutterfirebaseqrcodescan/status_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("tapped on scan QR button.");
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ScanScreen(),
              ),
            );
          },
          child: Icon(Icons.aod),
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

                  Navigator.push(context,
                      MaterialPageRoute(builder: (cxt) => LoginPage()));
                },
                leading: Icon(Icons.remove_circle),
              ),
            ],
          ),
        ),
        body: StatusListPage());
  }
}

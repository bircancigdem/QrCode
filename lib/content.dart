import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebaseqrcodescan/view.dart';

class Content extends StatefulWidget {
  @override
  _Content createState() => _Content();
}

class _Content extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arçelik No Frost Buzdolabı 270482 MI'),
      ),
      body: Container(
        alignment: Alignment(-1, -1),
        child: FlatButton(
          color: Colors.white,
          child: Text(
            "Buzdolabı Bölmeleri",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => loadPDF(),
              ),
            );
          },
        ),
      ),
    );
  }
}

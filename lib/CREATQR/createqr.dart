import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = 'Arçelik No Frost Buzdolabı 270482 MI';

    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: QrImage(
            data: url,
            version: QrVersions.auto,
            size: 320,
            gapless: false,
            embeddedImage: AssetImage('assets/images/my_embedded_image.png'),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(50, 50),
            ),
          ),
        ),
      ),
    );
  }
}

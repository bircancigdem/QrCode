import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

class loadPDF extends StatefulWidget {
  @override
  _loadPDF createState() => _loadPDF();
}

class _loadPDF extends State<loadPDF> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  Future<void> listExample() async {
    firebase_storage.ListResult result = await firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child('CV')
        .listAll();
    result.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });
    result.prefixes.forEach((firebase_storage.Reference ref) {
      print('Found directory: $ref');
    });
  }

  Future<void> downloadURLExample() async {
    String downloadURL = await firebase_storage.FirebaseStorage.instance
        .ref('CV/CV.pdf')
        .getDownloadURL();
    print(downloadURL);
    PDFDocument doc = await PDFDocument.fromURL(downloadURL);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewPDF(doc)));
  }

  @override
  void initState() {
    super.initState();
    listExample();
    downloadURLExample();
    print("All done");
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}

class ViewPDF extends StatelessWidget {
  PDFDocument document;
  ViewPDF(this.document);

  @override
  Widget build(BuildContext context) {
    return PDFViewer(document: document);
  }
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Pdfviewww extends StatelessWidget {
  const Pdfviewww({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfPdfViewer.network(
            'https://orimi.com/pdf-test.pdf'),
      ),
    );
  }
}

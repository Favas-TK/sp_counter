import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class Baarcode extends StatelessWidget {
  const Baarcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 350, width: 350,
          child: SfBarcodeGenerator(value: 'https://facebook.com',
          symbology: QRCode(),),
        ),
      ),
    );
  }
}
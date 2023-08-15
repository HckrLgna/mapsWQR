import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButtom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: const Icon(Icons.document_scanner_sharp),
      onPressed: () async{
        
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode("#FFFFFF", "Cancelar", false, ScanMode.QR);
         
      }
      );
  }
}
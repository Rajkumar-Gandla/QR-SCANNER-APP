import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1D23), // Dark grey
      appBar: AppBar(
        automaticallyImplyLeading: true, foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF2F3640), // Darker grey
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            "SCAN QR CODE",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: MobileScanner(
        controller: MobileScannerController(
          detectionSpeed: DetectionSpeed.noDuplicates,
          returnImage: true,
        ),
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? Image = capture.image;

          for (final barcode in barcodes) {
            print("Barcode found ! ${barcode.rawValue}");
          }
          if (Image != null) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(barcodes.first.rawValue ?? ""),
                );
              },
            );
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  String? qrdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1D23), // Dark grey
      appBar: AppBar(
        automaticallyImplyLeading: true, foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF2F3640), // Darker grey
        elevation: 0,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              "GENERATE QR CODE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              onSubmitted: (value) {
                setState(
                  () {
                    qrdata = value;
                  },
                );
              },
            ),
            if (qrdata != null)
              PrettyQrView.data(
                data: qrdata!,
                decoration: const PrettyQrDecoration(
                  background: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

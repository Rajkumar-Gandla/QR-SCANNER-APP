import 'package:flutter/material.dart';
import 'package:qrscanner/generator.dart';
import 'package:qrscanner/scanner.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1D23), // Dark grey
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F3640), // Darker grey
        elevation: 0,
        title: Center(
          child: Text(
            "QR APP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: routingbuttons(),
    );
  }

  Center routingbuttons() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF455A64),
        ),
        width: 300,
        height: 250,
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 30, left: 30, top: 0, bottom: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Scanner(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 84, 95, 97),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    height: 50,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          "QR - Scanner",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.qr_code_scanner_outlined,
                            color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Generator(),
                      ),
                    );
                  },
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 84, 95, 97),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 50,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "QR - Generator",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.qr_code_scanner_outlined,
                              color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

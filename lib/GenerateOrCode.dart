import 'package:flutter/material.dart';

class generateqrcode extends StatefulWidget {
  const generateqrcode({Key? key}) : super(key: key);

  @override
  State<generateqrcode> createState() => _generateqrcodeState();
}

class _generateqrcodeState extends State<generateqrcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Generate QR Code"),),
    );
  }
}

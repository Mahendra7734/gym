import 'package:flutter/material.dart';

class paymentreport extends StatefulWidget {
  const paymentreport({Key? key}) : super(key: key);

  @override
  State<paymentreport> createState() => _paymentreportState();
}

class _paymentreportState extends State<paymentreport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment Report"),),
    );
  }
}

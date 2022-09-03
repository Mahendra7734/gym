import 'package:flutter/material.dart';

class trainerreport extends StatefulWidget {
  const trainerreport({Key? key}) : super(key: key);

  @override
  State<trainerreport> createState() => _trainerreportState();
}

class _trainerreportState extends State<trainerreport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Trainer Report"),),
    );
  }
}

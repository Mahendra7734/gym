import 'package:flutter/material.dart';

class rateus extends StatefulWidget {
  const rateus({Key? key}) : super(key: key);

  @override
  State<rateus> createState() => _rateusState();
}

class _rateusState extends State<rateus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rate Us"),),
    );
  }
}

import 'package:flutter/material.dart';

class exercisedetails extends StatefulWidget {
  const exercisedetails({Key? key}) : super(key: key);

  @override
  State<exercisedetails> createState() => _exercisedetailsState();
}

class _exercisedetailsState extends State<exercisedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercise Details"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('name')
          ],
        ),
      ),
    );
  }
}

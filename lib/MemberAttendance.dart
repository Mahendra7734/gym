import 'package:flutter/material.dart';


class memberattendance extends StatefulWidget {
  const memberattendance({Key? key}) : super(key: key);

  @override
  State<memberattendance> createState() => _memberattendanceState();
}

class _memberattendanceState extends State<memberattendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member Attendance"),),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Raj Kumar"),
            ),
          )
        ],
      ),
    );
  }
}

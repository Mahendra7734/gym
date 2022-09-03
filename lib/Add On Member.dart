import 'package:flutter/material.dart';

class addonmember extends StatefulWidget {
  const addonmember({Key? key}) : super(key: key);

  @override
  State<addonmember> createState() => _addonmemberState();
}

class _addonmemberState extends State<addonmember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              child: Text(":(Nothing Found",style: TextStyle(color: Colors.black,fontSize: 22),))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';


class rediobutton extends StatefulWidget {
  const rediobutton({Key? key}) : super(key: key);

  @override
  State<rediobutton> createState() => _rediobuttonState();
}

class _rediobuttonState extends State<rediobutton> {
  
  String mypet='Dog';

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RadioListTile(
        subtitle: Text("gvhs"),
        value: 'Dog', groupValue: mypet, onChanged: (value){
        setState(() {
          mypet=mypet.toString();
        });

      },
        title: Text("Dog"),

      ),
      RadioListTile(
        subtitle: Container(
          color: Colors.red,
          height: 10,
        ),
        value: 'Cat', groupValue: mypet, onChanged: (value){
        setState(() {
          mypet=mypet.toString();
        });

      },
        title: Text('Cat'),

      ),
      RadioListTile(value: 'Other', groupValue: mypet, onChanged: (value){
        setState(() {
          mypet=mypet.toString();
        });

      },
        title: Text('Other'),

      ),
      const SizedBox(
        height: 30,
      ),
      Text('My Selected Choice$mypet')
    ],
  ),
);

  }
}

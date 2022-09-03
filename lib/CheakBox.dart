import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp( home: MyHomePage(),));
// }


class cheakbox extends StatefulWidget {
  const cheakbox({Key? key}) : super(key: key);

  @override
  State<cheakbox> createState() => _cheakboxState();
}

class _cheakboxState extends State<cheakbox> {
  bool valMonday = false;
  bool valTuesday = false;
  bool valWednesday = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Group Checkboxes"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // [Monday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Monday"),
                  Checkbox(
                    value: valMonday,
                    onChanged: (value) {
                      setState(() {
                        valMonday = value!;
                        valTuesday = false;
                        valWednesday = false;
                      });
                    },
                  ),
                ],
              ),


              // [Tuesday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Tuesday"),
                  Checkbox(
                    value: valTuesday,
                    onChanged: (value) {
                      setState(() {
                        valTuesday = value!;
                        valMonday = false;
                        valWednesday = false;
                      });
                    },
                  ),
                ],
              ),


              // [Wednesday] checkbox
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Wednesday"),
                  Checkbox(
                    value: valWednesday,
                    onChanged: (value) {
                      setState(() {
                        valWednesday = value!;
                        valMonday = false;
                        valTuesday = false;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class memberreport extends StatefulWidget {
  const memberreport({Key? key}) : super(key: key);

  @override
  State<memberreport> createState() => _memberreportState();
}

class _memberreportState extends State<memberreport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member Report"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                  border: TableBorder.all(), // Allows to add a border decoration around your table
                  children: [
                    TableRow(
                        decoration: BoxDecoration(
                          color: Colors.black12
                        ),
                        children :[
                      Text('S.No.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Text('ID',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Text('Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      Text('Mobile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ]),
                    TableRow(children :[
                      Text('1.',textAlign: TextAlign.center,),
                      Text('10',textAlign: TextAlign.center,),
                      Text('Priyanshu Saini',textAlign: TextAlign.center,),
                      Text('9352845655',textAlign: TextAlign.center,),
                    ]),
                    TableRow(children :[
                      Text('2.',textAlign: TextAlign.center,),
                      Text('5',textAlign: TextAlign.center,),
                      Text('James Gosling',textAlign: TextAlign.center,),
                      Text('7849888450', textAlign: TextAlign.center,),
                    ]),
                    TableRow(children :[
                      Text('3.',textAlign: TextAlign.center,),
                      Text('15',textAlign: TextAlign.center,),
                      Text('Raj Kumar',textAlign: TextAlign.center,),
                      Text('9676774256',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('4.',textAlign: TextAlign.center,),
                      Text('9',textAlign: TextAlign.center,),
                      Text('Aayush',textAlign: TextAlign.center,),
                      Text('8696702600',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('5.',textAlign: TextAlign.center,),
                      Text('12',textAlign: TextAlign.center,),
                      Text('Mahesh',textAlign: TextAlign.center,),
                      Text('9636764158',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('6.',textAlign: TextAlign.center,),
                      Text('13',textAlign: TextAlign.center,),
                      Text('Mayank',textAlign: TextAlign.center,),
                      Text('7339739533',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('7.',textAlign: TextAlign.center,),
                      Text('3',textAlign: TextAlign.center,),
                      Text('Priyanshu Saini',textAlign: TextAlign.center,),
                      Text('9352845655',textAlign: TextAlign.center,),
                    ]),
                    TableRow(children :[
                      Text('8.',textAlign: TextAlign.center,),
                      Text('11',textAlign: TextAlign.center,),
                      Text('James Gosling',textAlign: TextAlign.center,),
                      Text('7849888450', textAlign: TextAlign.center,),
                    ]),
                    TableRow(children :[
                      Text('9.',textAlign: TextAlign.center,),
                      Text('16',textAlign: TextAlign.center,),
                      Text('Raj Kumar',textAlign: TextAlign.center,),
                      Text('9676774256',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('10.',textAlign: TextAlign.center,),
                      Text('7',textAlign: TextAlign.center,),
                      Text('Aayush',textAlign: TextAlign.center,),
                      Text('8696702600',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('11.',textAlign: TextAlign.center,),
                      Text('4',textAlign: TextAlign.center,),
                      Text('Mahesh',textAlign: TextAlign.center,),
                      Text('9636764158',textAlign: TextAlign.center,),
                    ]),

                    TableRow(children :[
                      Text('12.',textAlign: TextAlign.center,),
                      Text('2',textAlign: TextAlign.center,),
                      Text('Mayank',textAlign: TextAlign.center,),
                      Text('7339739533',textAlign: TextAlign.center,),
                    ]),
                  ]
              ),
            ),
              ],
            )
        ),

    );
  }
}

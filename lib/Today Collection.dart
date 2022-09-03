import 'package:flutter/material.dart';


class todaycollectin extends StatefulWidget {
  const todaycollectin({Key? key}) : super(key: key);

  @override
  State<todaycollectin> createState() => _todaycollectinState();
}

class _todaycollectinState extends State<todaycollectin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Collection Report'),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Material(
                color: Colors.blueAccent,
                child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Today Collection (0)",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
              // Container(
              //   constraints: BoxConstraints(maxHeight: 150.0),
              //   child: Material(
              //     color: Colors.white60,
              //     child:
              //   );
              // ),
         Column(
           children: [
             Card(
               child: Row(
                 children: [
                   Container(
                     height: 70,
                     width: 70,

                     child: CircleAvatar(
                       backgroundImage: AssetImage('assets/images/member.jpg'),
                     ),

                   ),

                   Container(
                     margin: EdgeInsets.only(top: 10),
                     child: Column(

                       children: [
                         Container(
                             width: 100,
margin: EdgeInsets.only(left: 10),
                             child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold),)
                         ),
                         Container(
                             width: 100,
                             margin: EdgeInsets.only(left: 10),
                             child: Text("Piyush Goyal",textAlign: TextAlign.start,)
                         ),


                       ],
                     ),
                   ),
                 ],
               ),
             )
           ],
         )
            ],
          ),
        ),
      ),

    );
  }
}

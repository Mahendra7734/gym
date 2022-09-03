import 'package:flutter/material.dart';


class present extends StatefulWidget {
  const present({Key? key}) : super(key: key);

  @override
  State<present> createState() => _presentState();
}

class _presentState extends State<present> {
  List Name=["Ravi Kumar","Raju Raj","Priyanshu","Tony Sharma","Ankit Saini","Bhanu Meena","Vishnu Kumar","Deepak Jat","Kapil","Ashok Kumar",];
  List Id=["2","4","1","8","5","3","6","9","7","11",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Present"),),

      body: ListView(
       // scrollDirection: Axis.horizontal,
        children: [
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: Container(child: Text(Name[0]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[0]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[1]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[1]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[2]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[2]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[3]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[3]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[4]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[4]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[5]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[5]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[6]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[6]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[7]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[7]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[8]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[8]))),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(child: Container(child: Text(Name[9]))),
                  Text("Id = ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Expanded(child: Container(child: Text(Id[9]))),
                ],
              ),
            ),
          ),

        ],

      ),
    );
  }
}

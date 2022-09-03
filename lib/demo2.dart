import 'package:flutter/material.dart';

void main() => runApp(const MyApp2());

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListWheelScrollView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Wheel(),
    );
  }
}

class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
 late final ScrollBehavior? scrollBehavior;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Wheel List"),
        backgroundColor: Colors.green,
      ),
      body: ListWheelScrollView(
        itemExtent: 100,
         diameterRatio: 2.5,
        // offAxisFraction: 2.4,
          //squeeze: 0.5,
        // renderChildrenOutsideViewport:true,
         // DEPRECATED : clipToSize does not exist anymore.
         // USe clipBehaviour instead.
        //clipBehavior:Clip.antiAlias,
       perspective: 0.01,
          //clipToSize: true,
        physics: FixedExtentScrollPhysics(),
       //magnification: 5.5,
        useMagnifier: true,
       //  clipBehavior: Clip.,

        children: const <Widget>[
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 1',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 2',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 3',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 4',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 5',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 6',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 7',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              'Item 8',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 1",
          //	 textAlign: TextAlign.start,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 2",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 3",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 4",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 5",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 6",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 7",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
          // RaisedButton(
          // onPressed: null,
          // child: Text(
          //	 "Item 8",
          //	 textAlign: TextAlign.center,
          //	 style: TextStyle(
          //		 color: Colors.black,
          //		 fontWeight: FontWeight.bold,
          //		 fontSize: 25),
          // ),
          // ),
        ],
      ),
    );
  }
}

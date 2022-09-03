import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class viewchallange extends StatefulWidget {
  const viewchallange({Key? key}) : super(key: key);

  @override
  State<viewchallange> createState() => _viewchallangeState();
}

class _viewchallangeState extends State<viewchallange> {
  bool _enable = true;
  bool _enable1 = true;
  bool _enable2 = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Challange"),
      ),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable / Disable$_enable",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // CupertinoSwitch(
                  //   activeColor: Colors.blue,
                  //   value: _enable,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _enable = value;
                  //     });
                  //   },
                  // ),
                  FlutterSwitch(
                    width: 50,
                    height: 30,
                    valueFontSize: 10,
                    borderRadius: 30,
                    padding: 8,
                    showOnOff: true,
                      toggleSize: 10,
                    value:_enable,
                    onToggle:(val){
                      setState((){
                        _enable=val;
                      });
                    }

                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: _enable,
            child: Container(
                margin: EdgeInsets.only(top: 10),
                //height: double.infinity,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  //color: Colors.blue,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/gymchallange3.webp",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 90),
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "THE BEST GEAR FOR BEGINNERS",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Raising Stars Fitness",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                    Container(
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Start Date : ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "30/05/2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          Text(
                                            "End Date : ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "04/06/2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              "Description : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Container(
                                width: 260,
                                child: Text(
                                    "Almost everyone knows the importance of a good team name, but why do most of them still stick with normal names?"))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable / Disable Challange $_enable1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlutterSwitch(
                      width: 50,
                      height: 30,
                      valueFontSize: 10,
                      borderRadius: 30,
                      padding: 8,
                      showOnOff: true,
                      toggleSize: 10,
                      value:_enable1,
                      onToggle:(val){
                        setState((){
                          _enable1=val;
                        });
                      }

                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: _enable1,
            child: Container(
                margin: EdgeInsets.only(top: 10),
                //height: double.infinity,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  //color: Colors.blue,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/gymchallange1.webp",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 90),
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Just Happy To Be Taking Part",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Jacked in the box",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                    Container(
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Start Date : ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "10/06/2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          Text(
                                            "End Date : ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "15/06/2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              "Description : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Container(
                                width: 260,
                                child: Text(
                                    "Mental health issues can affect one in four people at some point in their lives. It’s crucial that employers have the right tools and resources"))
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable / Disable Challange $_enable1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  FlutterSwitch(
                      width: 50,
                      height: 30,
                      valueFontSize: 10,
                      borderRadius: 30,
                      padding: 8,
                      showOnOff: true,
                      toggleSize: 10,
                      value:_enable2,
                      onToggle:(val){
                        setState((){
                          _enable2=val;
                        });
                      }

                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: _enable2,
            child: Container(
                margin: EdgeInsets.only(top: 10),
                //height: double.infinity,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  //color: Colors.blue,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/gymchallange2.webp",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 90),
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Film & Music Themed",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Red Hot Chilli Steppers",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                    Container(
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Start Date : ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "1/07/2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          Text(
                                            "End Date : ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "10/07/2022",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              "Description : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Container(
                                width: 260,
                                child: Text(
                                    "Virtual fitness challenges are a fantastic way to add some excitement and interest to your runs, walks and bike rides. In the Myles app we"))
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

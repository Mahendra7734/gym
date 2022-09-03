import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class winnerchallange extends StatefulWidget {
  const winnerchallange({Key? key}) : super(key: key);

  @override
  State<winnerchallange> createState() => _winnerchallangeState();
}

class _winnerchallangeState extends State<winnerchallange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Winner Challange"),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 320,
                  width: double.infinity,
                 // color: Colors.teal,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(

                        begin: Alignment.bottomRight,
                        end: Alignment.topRight,

                        colors: [Colors.deepPurple,Colors.teal])
                  ),
                  child: Column(
                    children: [
                      // Container(
                      //   height: 40,
                      //   width: 40,
                      //    margin: EdgeInsets.only(right: 300,top: 20),
                      //   alignment: Alignment.center,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(40),
                      //       color: Colors.white
                      //
                      //   ),
                      //   child: Text("1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      // ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage("assets/images/winner.webp"),
                            backgroundColor: Colors.transparent,
                          )
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1st Winner : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "Amit Kumar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ID : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mobile No : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "9352805438",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Address : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "Pratap Nagar , jaipur",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start Date : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "20/06/2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "End Date : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "25/06/2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Description : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Container(
                        width: 255,
                        child: Text(
                          "We are inspired by the submissions that we received and the stories told by every young person that participated in the challenge. ",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        )),
                  ],
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(reverse: true),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    children: [
                      // Container(
                      //   height: 40,
                      //   width: 40,
                      //   margin: EdgeInsets.only(right: 300,top: 20),
                      //   alignment: Alignment.center,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(40),
                      //       color: Colors.white
                      //
                      //   ),
                      //   child: Text("2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      // ),
                      Container(
                          margin: EdgeInsets.only(top: 50),
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage("assets/images/winner2.webp"),
                            backgroundColor: Colors.transparent,
                          )),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " 2nd Winner : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "Mayank Saini",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ID : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mobile No : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "8504567456",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Address : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "Gangapur City , (SWM)",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start Date : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "01/05/2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "End Date : ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            "05/05/2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Description : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Container(
                        width: 255,
                        child: Text(
                          "If you say that something or someone is a winner, you mean that they are popular and successful, or that they are likely to be popular and successful.",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

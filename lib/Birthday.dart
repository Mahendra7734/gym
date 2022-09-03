import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gym/TodayBirthday.dart';
import 'package:gym/UpComingBirthday.dart';

class birthday extends StatefulWidget {
  const birthday({Key? key}) : super(key: key);

  @override
  State<birthday> createState() => _upcomingbirthdayState();
}

class _upcomingbirthdayState extends State<birthday> {
  var onTapRecognizer;
  @override
  Widget build(BuildContext context) {

    return Scaffold(body: setUserForm());
  }

  Widget setUserForm() {
    return
      Stack(children: <Widget>[
      // Background with gradient
      Container(
        child: Image.asset(
          'assets/images/running.jpg',
          fit: BoxFit.fill,
        ),
        // height: MediaQuery.of(context).size.height * 0.3
      ),
      Container(
        margin: EdgeInsets.only(top: 190,left: 20),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Hello, ",
              style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: "a",
                    recognizer: onTapRecognizer,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17))
              ]),
        ),
      ),
      DefaultTabController(
        length: 2,
        // child: Scaffold(
        //
        //     body:

        child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 240.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.white,
                  tabs: const [
                    Tab(
                      text: 'Today Birthday',
                    ),
                    Tab(
                      text: 'Up Coming Birthday',
                    ),
                  ],
                ),
              ),
              const Expanded(
                  child: TabBarView(
                children: [todaybirthday(), upcomingbirthday()],
              ))
            ],
          ),
        ),
      ),
      // ),

      // Positioned to take only AppBar size
      Positioned(
        top: 0.0,
        left: 0.0,
        right: 10.0,
        child:
        AppBar(
          // Add AppBar here only
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage("assets/images/gymmembers.jpg"),
              // backgroundColor: Colors.transparent,
            ),
          ],
        ),
      ),
    ]);
  }
}

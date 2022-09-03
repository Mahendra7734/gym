import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class upcomingbirthday extends StatefulWidget {
  const upcomingbirthday({Key? key}) : super(key: key);

  @override
  State<upcomingbirthday> createState() => _upcomingbirthdayState();
}

class _upcomingbirthdayState extends State<upcomingbirthday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage("assets/images/gymmembers.jpg"),
                    // backgroundColor: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Avdesh Meena",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Tomorrow, 5 june, 24 years old")),
                        Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Send Birthday Gift")),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 0, top: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: TextButton(
                        onPressed: () {
                          Share.share('check out my website https://example.com', subject: 'Look what I made!');
                        },
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage("assets/images/GYM8.jpg"),
                    // backgroundColor: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Puspendra Mawai",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Tomorrow, 5 june, 19 years old")),
                        Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Send Birthday Gift")),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 0, top: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: TextButton(
                        onPressed: () {
                          Share.share('check out my website https://example.com', subject: 'Look what I made!');
                        },
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage("assets/images/gym5.jpg"),
                    // backgroundColor: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Sugreev jadoun",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Tomorrow, 5 june, 23 years old")),
                        Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Send Birthday Gift")),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 0, top: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: TextButton(
                        onPressed: () {
                          Share.share('check out my website https://example.com', subject: 'Look what I made!');
                        },
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage("assets/images/gymchallange3.webp"),
                    // backgroundColor: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              "Rahul Kumar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Tomorrow, 5 june, 20 years old")),
                        Container(
                            width: 200,
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Send Birthday Gift")),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 0, top: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: TextButton(
                        onPressed: () {
                          Share.share('check out my website https://example.com', subject: 'Look what I made!');
                        },
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

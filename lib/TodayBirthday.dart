import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class todaybirthday extends StatefulWidget {
  const todaybirthday({Key? key}) : super(key: key);

  @override
  State<todaybirthday> createState() => _todaybirthdayState();
}

class _todaybirthdayState extends State<todaybirthday> {
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
                              "Raj Gurjar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Today, 4 june, 25 years old")),
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
                              "Tushar Saini",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Today, 4 june, 18 years old")),
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
                              "Rocky Gurjar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Today, 4 june, 22 years old")),
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
                              "Naresh Saini",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 200,
                            child: Text("Today, 4 june, 20 years old")),
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

import 'package:flutter/material.dart';

import 'dart:async';

import 'package:gym/LoginScreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => login())));
  }

  bool _loading = false;

  void _onLoading() {
    setState(() {
      _loading = true;
      new Future.delayed(new Duration(seconds: 3), _login);
    });
  }

  Future _login() async {
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                height: 840,
                child: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                )),

            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                  margin: EdgeInsets.only(left: 5),
                  width: 300,
                  height: 300,

                  // CircleAvatar(backgroundImage:AssetImage('assets/images/gym.jpg'),),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(20), // Image radius
                      child: Image.asset('assets/images/My project(1).png',
                          fit: BoxFit.cover),
                    ),
                  )),
            ),
            Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Gold's GYM India",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),

            Container(
              margin: EdgeInsets.only(top: 500),
              child: new Column(
                children: <Widget>[
                  new Center(
                    child: new SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: new CircularProgressIndicator(
                        value: null,
                        strokeWidth: 6.0,
                      ),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 25.0),
                    child: new Center(
                      child: new Text(
                        "loading.. wait...",
                        style: new TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //   Container(
            //     decoration: new BoxDecoration(
            //         color: Colors.blue[200]
            //     ),
            //     child: _loading ?  : body
            // ),
            // floatingActionButton: new FloatingActionButton(
            //   onPressed: _onLoading,
            //   tooltip: 'Loading',
            //   child: new Icon(Icons.check),
            // ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.only(top: 200),
    //         child: Container(
    //           margin: EdgeInsets.only(left: 5),
    //           width: 200,
    //           height: 200,
    //
    //      // CircleAvatar(backgroundImage:AssetImage('assets/images/gym.jpg'),),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(10), // Image border
    //               child: SizedBox.fromSize(
    //                 size: Size.fromRadius(20), // Image radius
    //                 child: Image.asset('assets/images/gym logo.png', fit: BoxFit.cover),
    //               ),
    //             )
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(top: 100),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //
    //           children: [
    //
    //
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //               child: CircleAvatar(backgroundImage: AssetImage('assets/images/flag.jpg'),),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //               child: Text("Made with",style: TextStyle(fontSize: 18,fontFamily: 'Montserrat' ),),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //               child: CircleAvatar(backgroundImage: AssetImage('assets/images/Dil.jpg'),),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(5.0),
    //               child: Text("In India",style: TextStyle(fontSize: 18),),
    //             ),
    //           ],
    //         ),
    //       ),
    //
    //          Padding(
    //            padding: const EdgeInsets.only(top: 50,left: 80),
    //            child: Row(
    //            // mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //              Column(
    //                children: [
    //                  Padding(
    //                    padding: const EdgeInsets.all(8.0),
    //                    child: Container(
    //                        height: 80,
    //                        width: 80,
    //                        child: Image.asset('assets/images/antivirus.jpg')),
    //                  ),
    //                  Padding(
    //                    padding: const EdgeInsets.all(8.0),
    //                    child: Text("100% Secure"),
    //                  )
    //                ],
    //              ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Column(
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 50),
    //                       child: Container(
    //                           height: 80,
    //                           width: 80,
    //                           child: Image.asset('assets/images/antiviours1.jpg')),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 50,top: 8),
    //                       child: Text("Cloud Backup"),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ],
    //         ),
    //          ),
    //
    //     ],
    //
    //   ),
    // );
  }
}

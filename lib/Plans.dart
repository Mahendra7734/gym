import 'package:flutter/material.dart';

class plans extends StatefulWidget {
  const plans({Key? key}) : super(key: key);

  @override
  State<plans> createState() => _plansState();
}

class _plansState extends State<plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plans"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/Excersice.png'),
                            ),
                          ),

                          //margin: EdgeInsets.only(top: 10),

                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                    //width: 150,
                                  //  margin: EdgeInsets.only(right: 70),
                                    child: Text(
                                      "STANDARD PLAN",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(

                                  margin: EdgeInsets.only(right: 0, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          //width: 150,
                                          // margin: EdgeInsets.only(right: 70,),
                                          child: Text(
                                        "Plan Amount : ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      )),
                                      Container(
                                        width: 60,
                                        child: Text("2000",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  //width: 200,
                                  //  margin: EdgeInsets.only(
                                  //     right: 20, bottom: 0, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          // width: 90,
                                          //margin: EdgeInsets.only(left: 15),
                                          child: Text(
                                        "Description : ",
                                        style: TextStyle(
                                            color: Colors.black87, fontSize: 15),
                                      )),
                                      Container(
                                      width: 120,
                                        child: Text(
                                          "Best GYM Plan For You",
                                          style: TextStyle(
                                              color: Colors.black87, fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(bottom: 50),
                          child: Image.asset('assets/images/new-offer.png'))
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                   Container(
                                   // margin: EdgeInsets.only(left: 8),
         child: Text("Plan Valid Only",style: TextStyle(fontWeight: FontWeight.bold),),

                                  ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("2 Days",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Plan Duration",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("2 Month",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Discount Amount",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("30%",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Divider(
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: [
                         Container(
                             alignment: Alignment.centerLeft,
                             child: Text("Discount Amount")),
                         Row(
                           children: [
                             Container(
                                 height:15,
                                 width: 15,
                                 child: Image.asset('assets/images/rupee.png')),
                             Text("1400"),
                             Text("/Only",style: TextStyle(color: Colors.red),)
                           ],
                         )
                       ],
                     ),
                   )

                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/Excersice.png'),
                            ),
                          ),

                          //margin: EdgeInsets.only(top: 10),

                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 150,
                                   // margin: EdgeInsets.only(right: 70),
                                    child: Text(
                                      "NORMAL PLAN",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(

                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                        // margin: EdgeInsets.only(right: 70,),
                                          child: Text(
                                            "Plan Amount : ",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15),
                                          )),
                                      Container(
                                        width: 60,
                                        child: Text("1500",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(bottom: 40,left: 40),
                          child: Image.asset('assets/images/new-offer.png'))
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Plan Valid Only",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("3 Days",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Plan Duration",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("3 Month",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Discount Amount",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("30%",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        //width: 200,
                         margin: EdgeInsets.only(
                             left: 10,  top: 10),
                        child: Row(
                          children: [
                            Container(
                              // width: 90,
                              //margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Description : ",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15,fontWeight: FontWeight.bold),
                                )),
                            Container(
                             // width: 120,
                              child: Text(
                                "Best GYM Plan For You",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Divider(
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Discount Amount")),
                            Row(
                              children: [
                                Container(
                                    height:15,
                                    width: 15,
                                    child: Image.asset('assets/images/rupee.png')),
                                Text("1050"),
                                Text("/Only",style: TextStyle(color: Colors.red),)
                              ],
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset('assets/images/Excersice.png'),
                            ),
                          ),

                          //margin: EdgeInsets.only(top: 10),

                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Container(
                                  //width: 150,
                                   // margin: EdgeInsets.only(right: 90),
                                    child: Text(
                                      "BASIC",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(

                                //  margin: EdgeInsets.only(right: 70, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                        // margin: EdgeInsets.only(right: 70,),
                                          child: Text(
                                            "Plan Amount : ",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15),
                                          )),
                                      Container(
                                        width: 60,
                                        child: Text("1000",
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  //width: 200,
                                  // margin: EdgeInsets.only(
                                  //     right: 30, bottom: 0, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        // width: 90,
                                        //margin: EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Description : ",
                                            style: TextStyle(
                                                color: Colors.black87, fontSize: 15),
                                          )),
                                      Container(
                                        width: 120,
                                        child: Text(
                                          "Best GYM Plan For You",
                                          style: TextStyle(
                                              color: Colors.black87, fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(bottom: 50),
                          child: Image.asset('assets/images/new-offer.png'))
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Plan Valid Only",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("4 Days",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Plan Duration",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("2 Month",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("Discount Amount",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(
                                  // margin: EdgeInsets.only(left: 8),
                                  child: Text("30%",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Divider(
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text("Discount Amount")),
                            Row(
                              children: [
                                Container(
                                    height:15,
                                    width: 15,
                                    child: Image.asset('assets/images/rupee.png')),
                                Text("800"),
                                Text("/Only",style: TextStyle(color: Colors.red),)
                              ],
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class offer1 extends StatefulWidget {
  const offer1({Key? key}) : super(key: key);

  @override
  State<offer1> createState() => _offer1State();
}

class _offer1State extends State<offer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        leading: Icon(Icons.my_location_rounded),
        title: Text("Offers"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.wysiwyg_rounded,),
          ),


        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                // color: Colors.red,
                elevation: 10,
                shadowColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Container(
                          //       width: 70,
                          //       height: 70,
                          //       decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(10),
                          //           image: DecorationImage(
                          //               image: AssetImage("${offer().image}"),
                          //               fit: BoxFit.cover))),
                          // ),

                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                    width: 250,
                                    child: Text(
                                      "${offer().offername}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w900),
                                    )),
                                Container(
                                  width: 250,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Business Name : ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        "${offer().businessname}",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),

                                Container(
                                  width: 250,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Type :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        "${offer().type}",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Start Date :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        "${offer().startdate}",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  child: Row(
                                    children: [
                                      Text(
                                        "End Date :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        "${offer().enddate}",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   child: Divider(
                      //     color: Colors.black,
                      //     height: 1,
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            // Text(
                            //   "Description :",
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.black,
                            //       fontSize: 13),
                            // ),
                            Container(
                                width: 340,
                                child: Text(
                                  "${offer().description}",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 11),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class offer {
  var image = 'assets/images/burger.jpg';
  var offername = "Reward Staff for Excellence";
  var businessname = "Shopify Store Domains";
  var type = "Cart";
  var startdate = "28/06/2022";
  var enddate = "10/07/2022";
  var description = "Choosing local suppliers, loudly advertising that fact";
}

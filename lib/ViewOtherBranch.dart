import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class viewotherbranch extends StatefulWidget {
  const viewotherbranch({Key? key}) : super(key: key);

  @override
  State<viewotherbranch> createState() => _viewotherbranchState();
}

class _viewotherbranchState extends State<viewotherbranch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Other Branches"),
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
                                    width: 300,
                                    //  margin: EdgeInsets.only(right: 70),
                                    child: Text(
                                      "Gold Gyms in Jaipur",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.only(right: 0, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          //width: 150,
                                          // margin: EdgeInsets.only(right: 70,),
                                          child: Text(
                                        "City : ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      )),
                                      Container(
                                        // width: 60,
                                        child: Text("Jaipur, Rajsthan",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  //  margin: EdgeInsets.only(
                                  //     right: 20, bottom: 0, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          // width: 90,
                                          //margin: EdgeInsets.only(left: 15),
                                          child: Text(
                                        "Area : ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      )),
                                      Container(
                                        width: 120,
                                        child: Text(
                                          "Pratap Nagar",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 15),
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
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: Text(
                  //           "Address :",
                  //           style: TextStyle(
                  //               color: Colors.black,
                  //               fontWeight: FontWeight.bold),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: ()async{
                  //           String telephoneUrl = "https://maps.google.com";
                  //           if (await canLaunch(telephoneUrl)) {
                  //           await launch(telephoneUrl);
                  //           } else {
                  //           throw "Error occured trying to call that number.";
                  //           }
                  //         },
                  //         child: Container(
                  //             width: 300,
                  //             child: Text(
                  //                 "111/90, Sunny Nagar, Sanganer, Sector 11, Pratap Nagar, Jaipur, Rajasthan 302033, India.",)),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:InkWell(
    // onTap: ()async{
    //           String telephoneUrl = "https://maps.google.com";
    //           if (await canLaunch(telephoneUrl)) {
    //           await launch(telephoneUrl);
    //           } else {
    //           throw "Error occured trying to call that number.";
    //           }
    //         },
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: 'Address : ',
                              style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                              children: const <TextSpan>[
                                TextSpan(text: '111/90, Sunny Nagar, Sanganer, Sector 11, Pratap Nagar, Jaipur, Rajasthan 302033, India.',style: TextStyle(fontWeight: FontWeight.normal) ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 35,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextButton(onPressed: ()async{

                            String telephoneUrl = "https://www.google.com/maps/place/Jaipur+Gym/@26.8022171,75.8207311,16.62z/data=!4m5!3m4!1s0x396dc9ead0b20e7d:0x28e041a4e9ae9be!8m2!3d26.8023891!4d75.8238356";
                            if (await canLaunch(telephoneUrl)) {
                            await launch(telephoneUrl);
                            } else {
                            throw "Error occured trying to call that number.";
                            }
                          }, child: Text("Go to Map",style: TextStyle(color: Colors.white),)),
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

import 'package:flutter/material.dart';


class offerlist extends StatefulWidget {
  const offerlist({Key? key}) : super(key: key);

  @override
  State<offerlist> createState() => _offerlistState();
}

class _offerlistState extends State<offerlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offer List"),
      ),
      body: ListView(
        children: [
          Container(
            //height: 135,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 7,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Offer type : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 130,
                                    child: Text("Discount",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Container(
                                  //width:160,
                                    child: Text("Discount type : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                                Container(
                                   // margin: EdgeInsets.only(right: 40),
                                    child: Text("Percentage",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Value : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 130,
                                   // margin: EdgeInsets.only(left: 50),
                                    child: Text("500",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Heading : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 170,
                                    child: Text("jskjsji",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Description : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 150,
                                    child: Text("Basic",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(bottom: 60),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red

                        ),
                        child: Text("10%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ),

              ),
            ),
          ),

          Container(
            //height: 135,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 7,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Offer type : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 155,
                                    child: Text("Gift",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                          width: 300,
                            child: Row(
                              children: [
                                Container(

                                    child: Text("Discount type : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                                Container(
                                   // margin: EdgeInsets.only(right: 0),
                                    child: Text("Fixed",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Value : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 190,
                                    // margin: EdgeInsets.only(left: 50),
                                    child: Text("700",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Heading : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                    //width: 170,
                                    child: Text("jskjsji",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Description : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 150,
                                    child: Text("Basic1",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(bottom: 60),
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(40),
                        //     color: Colors.red
                        //
                        // ),
                        child: Image.asset('assets/images/giftbox.png')
                      )
                    ],
                  ),
                ),

              ),
            ),
          ),
          Container(
           // height: 135,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 7,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Offer type : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                    //width: 155,
                                    child: Text("Discount",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Container(

                                    child: Text("Discount type : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                                Container(
                                  //  margin: EdgeInsets.only(right: 40),
                                    child: Text("Percentage",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Value : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                    //width: 190,
                                    // margin: EdgeInsets.only(left: 50),
                                    child: Text("300",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Heading : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                   // width: 170,
                                    child: Text("jskjsji",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Row(
                              children: [
                                Text("Description : ",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Container(
                                  //  width: 150,
                                    child: Text("Basic2",style: TextStyle(color: Colors.black,fontSize: 17),))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(bottom: 60),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red

                        ),
                        child: Text("20%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}

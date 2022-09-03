import 'package:flutter/material.dart';


class duepaymentreminder extends StatefulWidget {
  const duepaymentreminder({Key? key}) : super(key: key);

  @override
  State<duepaymentreminder> createState() => _duepaymentreminderState();
}

class _duepaymentreminderState extends State<duepaymentreminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Due Payment Reminder"),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(

                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Plan Name : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )
                                ),
                                Container(
                                    child: Text(
                                      "STANDARD PLAN",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(

                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Payment : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Container(
                                  child: Row(
                                    children: [

                                      Text("2000",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 17)),
                                      Container(
                                          height: 15,
                                          width: 15,
                                          child: Image.asset('assets/images/rupee.png',)),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

                                  child: Text("Payment Method",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

                                  child: Text("Online",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(

                                  child: Text("Due Payment",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("500",style: TextStyle(color: Colors.red),),

                                      Container(
                                          height: 12,
                                          width: 12,
                                          child: Image.asset('assets/images/rupee.png',color: Colors.red,))
                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(

                                  child: Text("Discount Amount",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

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
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(

                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Plan Name : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )
                                ),
                                Container(
                                    child: Text(
                                      "NORMAL PLAN",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(

                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Payment : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Container(
                                  child: Row(
                                    children: [

                                      Text("1500",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 17)),
                                      Container(
                                          height: 15,
                                          width: 15,
                                          child: Image.asset('assets/images/rupee.png',)),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

                                  child: Text("Payment Method",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

                                  child: Text("Card Payment",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(

                                  child: Text("Due Payment",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("700",style: TextStyle(color: Colors.red),),

                                      Container(
                                          height: 12,
                                          width: 12,
                                          child: Image.asset('assets/images/rupee.png',color: Colors.red,))
                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(

                                  child: Text("Discount Amount",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

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
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(

                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Plan Name : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )
                                ),
                                Container(
                                    child: Text(
                                      "BASIC",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(

                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Payment : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Container(
                                  child: Row(
                                    children: [

                                      Text("1000",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 17)),
                                      Container(
                                          height: 15,
                                          width: 15,
                                          child: Image.asset('assets/images/rupee.png',)),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

                                  child: Text("Payment Method",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

                                  child: Text("Cash",style: TextStyle(),),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(

                                  child: Text("Due Payment",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("400",style: TextStyle(color: Colors.red),),

                                      Container(
                                          height: 12,
                                          width: 12,
                                          child: Image.asset('assets/images/rupee.png',color: Colors.red,))
                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [

                                Container(

                                  child: Text("Discount Amount",style: TextStyle(fontWeight: FontWeight.bold),),

                                ),
                                Container(

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
                                Text("700"),
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

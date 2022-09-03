import 'package:flutter/material.dart';
class gymmember extends StatefulWidget {
  const gymmember({Key? key}) : super(key: key);

  @override
  State<gymmember> createState() => _gymmemberState();
}

class _gymmemberState extends State<gymmember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              shadowColor: Colors.teal,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.teal, width: 0.5),
                  borderRadius: BorderRadius.circular(10)
              ),
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
                            height: 100,
                            width: 100,

                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/member.jpg'),
                            ),

                          ),



                          //margin: EdgeInsets.only(top: 10),



                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(

                              children: [
                                Container(
                                    width: 100,

                                    child: Text("Name",style: TextStyle(color: Colors.black45),)),
                                Container(
                                    width: 100,
                                    child: Text("Mahendra Saini",textAlign: TextAlign.start,)),
                                Container(
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("Address",style: TextStyle(color: Colors.black45),textAlign: TextAlign.start,),
                                    )),
                                Container(
                                    width: 100,
                                    child: Text("Sanganer",textAlign: TextAlign.start,)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text("Contact Number",style: TextStyle(color: Colors.black45),),
                                ),
                                TextButton.icon(onPressed: (){

                                }, icon:
                                Icon(Icons.call,size: 20,),
                                    label: Text("9352805438")),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                  Column(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            flex:20,
                            child: Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(

                                children: [
                                  Container(
                                      width: 150,
                                      child: Text("Date:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Total Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Paid Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Apr 19,2022")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("500")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("300")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Expiry Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Tax Amt :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Due Amt :",style: TextStyle(color: Colors.red,fontSize: 13))),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("May 19,2022")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("0")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("150")),
                              ],
                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                  Divider(
                    height: 1,
                  ),
                    Row(
                      children: [
                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.receipt_long,color: Colors.teal,), // icon
                                  Text("Reminder",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),


                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.payments_sharp,color: Colors.teal,), // icon
                                  Text("Add Pay",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.email_outlined,color: Colors.teal,), // icon
                                  Text("SMS",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.whatsapp,color: Colors.teal,), // icon
                                  Text("Message",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),


                ],
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.teal,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.teal, width: 0.5),
                  borderRadius: BorderRadius.circular(10)
              ),
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
                            height: 100,
                            width: 100,

                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/member.jpg'),
                            ),

                          ),



                          //margin: EdgeInsets.only(top: 10),



                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(

                              children: [
                                Container(
                                    width: 100,

                                    child: Text("Name",style: TextStyle(color: Colors.black45),)),
                                Container(
                                    width: 100,
                                    child: Text("Golu",textAlign: TextAlign.start,)),
                                Container(
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("Address",style: TextStyle(color: Colors.black45),textAlign: TextAlign.start,),
                                    )),
                                Container(
                                    width: 100,
                                    child: Text("Mahesh Nagar, Jaipur",textAlign: TextAlign.start,)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text("Contact Number",style: TextStyle(color: Colors.black45),),
                                ),
                                TextButton.icon(onPressed: (){

                                }, icon:
                                Icon(Icons.call,size: 20,),
                                    label: Text("9982517734")),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                  Column(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            flex:20,
                            child: Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(

                                children: [
                                  Container(
                                      width: 150,
                                      child: Text("Date:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Total Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Paid Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Apr 30,2022")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("500")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("200")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Expiry Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Tax Amt :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Due Amt :",style: TextStyle(color: Colors.red,fontSize: 13))),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("May 30,2022")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("0")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("350")),
                              ],
                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                  Divider(
                    height: 1,
                  ),
                 Row(
                      children: [
                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.receipt_long,color: Colors.teal,), // icon
                                  Text("Reminder",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),


                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.payments_sharp,color: Colors.teal,), // icon
                                  Text("Add Pay",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.email_outlined,color: Colors.teal,), // icon
                                  Text("SMS",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.whatsapp,color: Colors.teal,), // icon
                                  Text("Message",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),


                ],
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.teal,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.teal, width: 0.5),
                  borderRadius: BorderRadius.circular(10)
              ),
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
                            height: 100,
                            width: 100,

                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/member.jpg'),
                            ),

                          ),



                          //margin: EdgeInsets.only(top: 10),



                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(

                              children: [
                                Container(
                                    width: 100,

                                    child: Text("Name",style: TextStyle(color: Colors.black45),)),
                                Container(
                                    width: 100,
                                    child: Text("ASP Mahendra Gangapur City",textAlign: TextAlign.start,)),
                                Container(
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("Address",style: TextStyle(color: Colors.black45),textAlign: TextAlign.start,),
                                    )),
                                Container(
                                    width: 100,
                                    child: Text("GGC",textAlign: TextAlign.start,)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text("Contact Number",style: TextStyle(color: Colors.black45),),
                                ),
                                TextButton.icon(onPressed: (){

                                }, icon:
                                Icon(Icons.call,size: 20,),
                                    label: Text("9352805438")),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                  Column(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            flex:20,
                            child: Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(

                                children: [
                                  Container(
                                      width: 150,
                                      child: Text("Date:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Total Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Paid Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Apr 30,2022")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("500")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("350")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Expiry Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Tax Amt :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Due Amt :",style: TextStyle(color: Colors.red,fontSize: 13))),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Sept 29,2022")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("0")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("250")),
                              ],
                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                  Divider(
                    height: 1,
                  ),
                    Row(
                      children: [
                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.receipt_long,color: Colors.teal,), // icon
                                  Text("Reminder",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),


                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.payments_sharp,color: Colors.teal,), // icon
                                  Text("Add Pay",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.email_outlined,color: Colors.teal,), // icon
                                  Text("SMS",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.whatsapp,color: Colors.teal,), // icon
                                  Text("Message",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),


                ],
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.teal,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.teal, width: 0.5),
                  borderRadius: BorderRadius.circular(10)
              ),
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
                            height: 100,
                            width: 100,

                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/member.jpg'),
                            ),

                          ),



                          //margin: EdgeInsets.only(top: 10),



                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(

                              children: [
                                Container(
                                    width: 100,

                                    child: Text("Name",style: TextStyle(color: Colors.black45),)),
                                Container(
                                    width: 100,
                                    child: Text("ASP Mahendra Gangapur City",textAlign: TextAlign.start,)),
                                Container(
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("Address",style: TextStyle(color: Colors.black45),textAlign: TextAlign.start,),
                                    )),
                                Container(
                                    width: 100,
                                    child: Text("GGC",textAlign: TextAlign.start,)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text("Contact Number",style: TextStyle(color: Colors.black45),),
                                ),
                                TextButton.icon(onPressed: (){

                                }, icon:
                                Icon(Icons.call,size: 20,),
                                    label: Text("9352805438")),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),

                  Column(
                    children: [

                      Row(
                        children: [
                          Expanded(
                            flex:20,
                            child: Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Column(

                                children: [
                                  Container(
                                      width: 150,
                                      child: Text("Date:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Total Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Paid Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                children: [
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("May 04,2022")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("500")),
                                  Container(
                                      width: 150,
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("100")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Expiry Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Tax Amt :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Due Amt :",style: TextStyle(color: Colors.red,fontSize: 13))),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Aug 03,2022")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("0")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("450")),
                              ],
                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                  Divider(
                    height: 1,
                  ),
                    Row(
                      children: [
                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.receipt_long,color: Colors.teal,), // icon
                                  Text("Reminder",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),


                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.payments_sharp,color: Colors.teal,), // icon
                                  Text("Add Pay",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.email_outlined,color: Colors.teal,), // icon
                                  Text("SMS",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox.fromSize(
                          size: Size(56, 56), // button width and height
                          child: ClipOval(

                            child: InkWell(
                              //splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.whatsapp,color: Colors.teal,), // icon
                                  Text("Message",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                                ],
                              ),
                            ),
                          ),
                        ),



                      ],
                    ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

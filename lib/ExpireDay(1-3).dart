import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class expireday extends StatefulWidget {
  const expireday({Key? key}) : super(key: key);

  @override
  State<expireday> createState() => _expiredayState();
}

class _expiredayState extends State<expireday> {
  List members=["Total Members","Live Members","Expired Members","Expired(1-3 Days)","Expired(4-7 Days)","Expired(8-15 Days)","Demo Member","VIP Member","Blocked Member","PT Subscription","PT Expired","Group X Subscriptions","  Group X Expired"];
  List count=["7","5","1","1","0","1","0","1","0","0","0","0","0"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member"),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.expand),),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.short_text),),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.search),),
          IconButton(onPressed: (){

          }, icon: Icon(Icons.person_add),)
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 110,
            //alignment: Alignment.center,
            child: ListView(

              scrollDirection: Axis.horizontal,
              children: [
                Container(

                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(members[0]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[0],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: 110,
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //         side: new BorderSide(color: Colors.blue, width: 1.0),
                //         borderRadius: BorderRadius.circular(10)
                //     ),
                //     color: Colors.white,
                //     child: Padding(
                //       padding: const EdgeInsets.all(8),
                //       child: Column(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.only(left: 18.0),
                //             child: Text(members[1]),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 20.0),
                //             child: Container(
                //                 height: 30,
                //                 width: 30,
                //                 alignment: Alignment.center,
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(50),
                //                     color: Colors.blueAccent
                //                 ),
                //                 child: Text(count[1],style: TextStyle(color: Colors.white),)),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  width: 110,

                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 15),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(members[2]),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[2],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 20),
                          child: Text(members[3]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.teal
                              ),
                              child: Text(count[3],style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),

                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(members[4]),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[4],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 20),
                      child: Column(
                        children: [
                          Text(members[5]),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[5],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: 110,
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //         side: new BorderSide(color: Colors.blue, width: 1.0),
                //         borderRadius: BorderRadius.circular(10)
                //     ),
                //     color: Colors.white,
                //     child: Padding(
                //       padding: const EdgeInsets.only(top: 8.0,left: 30),
                //       child: Column(
                //         children: [
                //           Text(members[6]),
                //           Padding(
                //             padding: const EdgeInsets.only(top: 20.0),
                //             child: Container(
                //                 height: 30,
                //                 width: 30,
                //                 alignment: Alignment.center,
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(50),
                //                     color: Colors.blueAccent
                //                 ),
                //                 child: Text(count[6],style: TextStyle(color: Colors.white),)),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 10),
                      child: Column(
                        children: [
                          Text(members[7]),
                          Padding(
                            padding: const EdgeInsets.only(top: 35.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[7],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 30),
                          child: Text(members[8]),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.teal
                              ),
                              child: Text(count[8],style: TextStyle(color: Colors.white),)),
                        ),
                      ],
                    ),

                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 10),
                      child: Column(
                        children: [
                          Text(members[9]),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[9],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 10),
                      child: Column(
                        children: [
                          Text(members[10]),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[10],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 15),
                      child: Column(
                        children: [
                          Text(members[11]),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[11],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.teal, width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 20),
                      child: Column(
                        children: [
                          Text(members[12]),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.teal
                                ),
                                child: Text(count[12],style: TextStyle(color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                                  child: Text("Sanganer",textAlign: TextAlign.start,)),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text("Contact Number",style: TextStyle(color: Colors.black45),),
                              ),
                              TextButton.icon(onPressed: (){

                              }, icon:
                              Icon(Icons.call,size: 20,color: Colors.blue,),
                                  label: Text("9982517734",style: TextStyle(color: Colors.blue),)),

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
                                    child: Text("Join Date:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Final Amt:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Plan:",style: TextStyle(color: Colors.black45,fontSize: 13))),
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
                                    child: Text("Aug 30,2022")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("580")),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("basic")),
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
                                  child: Text("End Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                              Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("Paid Amt :",style: TextStyle(color: Colors.black45,fontSize: 13))),
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
                                  child: Text("Sep 29,2022")),
                              Container(
                                  width: 150,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("350")),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:   Row(
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
                                Icon(Icons.person,color: Colors.teal,), // icon
                                Text("Profile",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
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
                                Icon(Icons.card_giftcard_sharp,color: Colors.teal,), // icon
                                Text("ID-Card",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
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
                                Icon(Icons.edit,color: Colors.teal,), // icon
                                Text("Edit",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                              ],
                            ),
                          ),
                        ),
                      ),

                      // SizedBox.fromSize(
                      //   size: Size(56, 56), // button width and height
                      //   child: ClipOval(
                      //
                      //     child: InkWell(
                      //       //splashColor: Colors.green, // splash color
                      //       onTap: () {}, // button pressed
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: <Widget>[
                      //           Icon(Icons.add,color: Colors.blue,), // icon
                      //           Text("Add on",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

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
                                Icon(Icons.autorenew,color: Colors.teal,), // icon
                                Text("Renew",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                      //
                      // SizedBox.fromSize(
                      //   size: Size(56, 56), // button width and height
                      //   child: ClipOval(
                      //
                      //     child: InkWell(
                      //       //splashColor: Colors.green, // splash color
                      //       onTap: () {}, // button pressed
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: <Widget>[
                      //           Icon(Icons.security_update_good_rounded,color: Colors.blue,), // icon
                      //           Text("Upgrade",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      SizedBox.fromSize(
                        size: Size(56, 56), // button width and height
                        child: ClipOval(

                          child: InkWell(
                            //splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.wash_outlined,color: Colors.teal,), // icon
                                Text("Gift Days",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
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
                                Icon(Icons.book_online_outlined,color: Colors.teal,), // icon
                                Text("Add Bill",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
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

                      // SizedBox.fromSize(
                      //   size: Size(56, 56), // button width and height
                      //   child: ClipOval(
                      //
                      //     child: InkWell(
                      //       //splashColor: Colors.green, // splash color
                      //       onTap: () {}, // button pressed
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: <Widget>[
                      //           Icon(Icons.library_add_check,color: Colors.blue,), // icon
                      //           Text("Check In",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      SizedBox.fromSize(
                        size: Size(56, 56), // button width and height
                        child: ClipOval(

                          child: InkWell(
                            //splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.security_update_good_rounded,color: Colors.teal,), // icon
                                Text("Thered",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
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
                                Icon(Icons.print,color: Colors.teal,), // icon
                                Text("Print",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                              ],
                            ),
                          ),
                        ),
                      ),

                      // SizedBox.fromSize(
                      //   size: Size(56, 56), // button width and height
                      //   child: ClipOval(
                      //
                      //     child: InkWell(
                      //       //splashColor: Colors.green, // splash color
                      //       onTap: () {}, // button pressed
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: <Widget>[
                      //           Icon(Icons.pause_circle_outline_rounded,color: Colors.blue,), // icon
                      //           Text("Freeze",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      SizedBox.fromSize(
                        size: Size(56, 56), // button width and height
                        child: ClipOval(

                          child: InkWell(
                            //splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.delete_forever,color: Colors.red,), // icon
                                Text("Delete",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.block,color: Colors.teal,), // icon
                                Text("Block",style: TextStyle(color: Colors.teal,fontSize: 11),), // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          )
        ],
      ),

    );
  }
}

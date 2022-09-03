import 'package:flutter/material.dart';
import 'package:gym/EditProfile.dart';
import 'package:gym/ViewProfile.dart';
import 'AddMember.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Model Class/GetCustomerDetailsResponse.dart';

class totalmember extends StatefulWidget {
   const totalmember({Key? key}) : super(key: key);

  //String memberid;

 // totalmember({required this.memberid });

  @override
  State<totalmember> createState() => _totalmemberState();
}

class _totalmemberState extends State<totalmember> {
  List members = [
    "Total Members",
    "Live Members",
    "Expired Members",
    "Expired(1-3 Days)",
    "Expired(4-7 Days)",
    "Expired(8-15 Days)",
    "Demo Member",
    "VIP Member",
    "Blocked Member",
    "PT Subscription",
    "PT Expired",
    "Group X Subscriptions",
    "  Group X Expired"
  ];
  List count = [
    "4",
    "3",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0"
  ];

  Future<GetCustomerDetailsResponse> getCustomerDetails() async {
    final response = await http.get(
        Uri.parse('https://www.premad.in/GYM/Api/getCustomerDetails'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return GetCustomerDetailsResponse.fromJson(data);
    } else {
      return GetCustomerDetailsResponse.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total Member"),
        actions: [
        
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>addmember()));

            },
            icon: Icon(Icons.person_add),
          )
        ],
      ),
      body:
         FutureBuilder<GetCustomerDetailsResponse>(
            future: getCustomerDetails(),
            builder: (context , snapshot){
              if(snapshot.hasData){
             return ListView.builder(
               itemCount: snapshot.data!.data!.length,
               itemBuilder: (context, index) {
               return Card(
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
                               height: 100,
                               width: 100,
                               child: CircleAvatar(
                                 backgroundImage:
                                 AssetImage('assets/images/member.jpg'),
                               ),
                             ),

                             //margin: EdgeInsets.only(top: 10),

                             Container(
                               margin: EdgeInsets.only(top: 10),
                               child: Column(
                                 children: [
                                   Row(
                                     children: [
                                       Container(
                                          // width: 100,
                                           child: Text(
                                             "Name :",
                                             style: TextStyle(color: Colors.black45),
                                           )),

                                   Container(
                                       width: 170,
                                       margin: EdgeInsets.only(left: 10),
                                       child: Text(
                                         snapshot.data!.data![index].name.toString(),

                                         textAlign: TextAlign.start,
                                       )),
                                     ],
                                   ),
                                   Row(
                                     children: [
                                       Container(
                                           //width: 150,
                                           child: Text("Email :",
                                               style: TextStyle(
                                                   color: Colors.black45,
                                                   fontSize: 13))),

                                   Container(
                                       width: 175,
                                       margin: EdgeInsets.only(top: 5,left: 10),
                                       child: Text(snapshot.data!.data![index].mobile.toString())),
                                     ],
                                   ),
                                   Row(
                                     children: [
                                       Container(
                                          // width: 100,
                                           child: Padding(
                                             padding: const EdgeInsets.only(top: 8.0),
                                             child: Text(
                                               "Address : ",
                                               style: TextStyle(color: Colors.black45),
                                               textAlign: TextAlign.start,
                                             ),
                                           )),

                                   Container(
                                       width: 170,
                                       child: Text(
                                         snapshot.data!.data![index].address.toString(),
                                         textAlign: TextAlign.start,
                                       )),
                                     ],
                                   ),
                                   Row(
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(left: 10),
                                         child: Padding(
                                           padding: const EdgeInsets.only(top: 5.0),
                                           child: Text(
                                             "Contact Number :",
                                             style: TextStyle(color: Colors.black45),
                                           ),
                                         ),
                                       ),

                                   TextButton.icon(
                                       onPressed: () {},
                                       icon: Icon(
                                         Icons.call,
                                         size: 20,
                                       ),
                                       label: Text(snapshot.data!.data![index].address.toString())),
                                     ],
                                   ),
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
                               flex: 20,
                               child: Container(
                                 margin: EdgeInsets.only(left: 8),
                                 child: Column(
                                   children: [

                                     Container(
                                         width: 150,
                                         child: Text("Join Date:",
                                             style: TextStyle(
                                                 color: Colors.black45,
                                                 fontSize: 13))),
                                     Container(
                                         width: 150,
                                         margin: EdgeInsets.only(top: 5),
                                         child: Text("Final Amt:",
                                             style: TextStyle(
                                                 color: Colors.black45,
                                                 fontSize: 13))),
                                     Container(
                                         width: 150,
                                         margin: EdgeInsets.only(top: 5),
                                         child: Text("Plan:",
                                             style: TextStyle(
                                                 color: Colors.black45,
                                                 fontSize: 13))),
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
                                         child: Text(snapshot.data!.data![index].startJoining.toString())),
                                     Container(
                                         width: 150,
                                         margin: EdgeInsets.only(top: 5),
                                         child: Text(snapshot.data!.data![index].name.toString())),
                                     Container(
                                         width: 150,
                                         margin: EdgeInsets.only(top: 5),
                                         child: Text(snapshot.data!.data![index].planId.toString())),
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
                                       child: Text("Dob :",
                                           style: TextStyle(
                                               color: Colors.black45,
                                               fontSize: 13))),
                                   Container(
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text("Gender :",
                                           style: TextStyle(
                                               color: Colors.black45,
                                               fontSize: 13))),
                                   Container(
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text("End Date :",
                                           style: TextStyle(
                                               color: Colors.black45,
                                               fontSize: 13))),
                                   Container(
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text("Paid Amt :",
                                           style: TextStyle(
                                               color: Colors.black45,
                                               fontSize: 13))),
                                   Container(
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text("Due Amt :",
                                           style: TextStyle(
                                               color: Colors.red, fontSize: 13))),
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
                                       child: Text(snapshot.data!.data![index].dob.toString())),
                                   Container(
                                       width: 150,
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text(snapshot.data!.data![index].gender.toString())),
                                   Container(
                                       width: 150,
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text(snapshot.data!.data![index].startJoining.toString())),
                                   Container(
                                       width: 150,
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text(snapshot.data!.data![index].gender.toString())),
                                   Container(
                                       width: 150,
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text(snapshot.data!.data![index].age.toString())),
                                 ],
                               ),
                             ),
                           ],
                         ),
                         Row(
                           // mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Container(
                                 margin: EdgeInsets.only(top: 5, left: 8),
                                 child: Text("Batch :",
                                     style: TextStyle(
                                         color: Colors.black45, fontSize: 13))),
                             Container(
                                 margin: EdgeInsets.only(left: 30),
                                 child: Text(snapshot.data!.data![index].batchId.toString()))
                           ],
                         )
                       ],
                     ),
                     Divider(
                       height: 1,
                     ),
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           SizedBox.fromSize(
                             size: Size(56, 56), // button width and height
                             child: ClipOval(
                               child: InkWell(
                                 //splashColor: Colors.green, // splash color
                                 onTap: () => Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                       builder: (context) => viewprofile()),
                                 ), // button pressed
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Icon(
                                       Icons.person,
                                       color: Colors.blue,
                                     ), // icon
                                     Text(
                                       "Profile",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ), // text
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
                                 // button pressed
                                 onTap: () => Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                       builder: (context) => editprofile()),
                                 ),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[
                                     Icon(
                                       Icons.edit,
                                       color: Colors.blue,
                                     ), // icon
                                     Text(
                                       "Edit",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ), // text
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
                                     Icon(
                                       Icons.email_outlined,
                                       color: Colors.blue,
                                     ),
                                     // icon
                                     Text(
                                       "SMS",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ),
                                     // text
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
                                     Icon(
                                       Icons.whatsapp,
                                       color: Colors.blue,
                                     ),
                                     // icon
                                     Text(
                                       "Message",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ),
                                     // text
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
                                     Icon(
                                       Icons.print,
                                       color: Colors.blue,
                                     ), // icon
                                     Text(
                                       "Print",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ), // text
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
                                     Icon(
                                       Icons.delete_forever,
                                       color: Colors.red,
                                     ),
                                     // icon
                                     Text(
                                       "Delete",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ),
                                     // text
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
                                     Icon(
                                       Icons.block,
                                       color: Colors.blue,
                                     ), // icon
                                     Text(
                                       "Block",
                                       style: TextStyle(
                                           color: Colors.blue, fontSize: 11),
                                     ), // text
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
               );
             },
             );
              }else{
                return Text("Loading");
              }

            }
        )

    );
  }
}

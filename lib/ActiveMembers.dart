import 'package:flutter/material.dart';
import 'package:gym/EditProfile.dart';

import 'AddMember.dart';
import 'ViewProfile.dart';

class livemember extends StatefulWidget {
  const livemember({Key? key}) : super(key: key);

  @override
  State<livemember> createState() => _livememberState();
}

class _livememberState extends State<livemember> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Active Member"),
      actions: [
        // IconButton(onPressed: (){
        //
        // }, icon: Icon(Icons.expand),),
        // IconButton(onPressed: (){
        //
        // }, icon: Icon(Icons.short_text),),
        // IconButton(onPressed: (){
        //
        // }, icon: Icon(Icons.search),),
        IconButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>addmember()));

        }, icon: Icon(Icons.person_add),)
      ],
      ),
      body: ListView(
        children: [

          Card(
            shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.blue, width: 0.5),
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
                                  child: Text("300")),
                              Container(
                                  width: 150,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("230")),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5,left: 8),
                            child: Text("Batch :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                        Container(
                            margin: EdgeInsets.only(left: 30),

                            child: Text("Morning"))
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewprofile()),
                            ), // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.person,color: Colors.blue,), // icon
                                Text("Profile",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editprofile()),
                            ), // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.edit,color: Colors.blue,), // icon
                                Text("Edit",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.email_outlined,color: Colors.blue,), // icon
                                Text("SMS",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.whatsapp,color: Colors.blue,), // icon
                                Text("Message",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.print,color: Colors.blue,), // icon
                                Text("Print",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.block,color: Colors.blue,), // icon
                                Text("Block",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
          ),

          Card(
            shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.blue, width: 0.5),
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
                                  child: Text("300")),
                              Container(
                                  width: 150,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("230")),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5,left: 8),
                            child: Text("Batch :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                        Container(
                            margin: EdgeInsets.only(left: 30),

                            child: Text("Morning"))
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewprofile()),
                            ), // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.person,color: Colors.blue,), // icon
                                Text("Profile",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editprofile()),
                            ), // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.edit,color: Colors.blue,), // icon
                                Text("Edit",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.email_outlined,color: Colors.blue,), // icon
                                Text("SMS",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.whatsapp,color: Colors.blue,), // icon
                                Text("Message",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.print,color: Colors.blue,), // icon
                                Text("Print",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.block,color: Colors.blue,), // icon
                                Text("Block",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
          ),

          Card(
            shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.blue, width: 0.5),
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
                                  child: Text("300")),
                              Container(
                                  width: 150,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("230")),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5,left: 8),
                            child: Text("Batch :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                        Container(
                            margin: EdgeInsets.only(left: 30),

                            child: Text("Morning"))
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewprofile()),
                            ),  // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.person,color: Colors.blue,), // icon
                                Text("Profile",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editprofile()),
                            ), // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.edit,color: Colors.blue,), // icon
                                Text("Edit",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.email_outlined,color: Colors.blue,), // icon
                                Text("SMS",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.whatsapp,color: Colors.blue,), // icon
                                Text("Message",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.print,color: Colors.blue,), // icon
                                Text("Print",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.block,color: Colors.blue,), // icon
                                Text("Block",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
          ),

          Card(
            shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.blue, width: 0.5),
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
                                  child: Text("300")),
                              Container(
                                  width: 150,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("230")),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5,left: 8),
                            child: Text("Batch :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                        Container(
                            margin: EdgeInsets.only(left: 30),

                            child: Text("Morning"))
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => viewprofile()),
                            ),  // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.person,color: Colors.blue,), // icon
                                Text("Profile",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editprofile()),
                            ),  // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.edit,color: Colors.blue,), // icon
                                Text("Edit",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.email_outlined,color: Colors.blue,), // icon
                                Text("SMS",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.whatsapp,color: Colors.blue,), // icon
                                Text("Message",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.print,color: Colors.blue,), // icon
                                Text("Print",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
                                Icon(Icons.block,color: Colors.blue,), // icon
                                Text("Block",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
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
          ),
        ],
      ),

    );
  }
}

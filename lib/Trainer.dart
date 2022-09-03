import 'package:flutter/material.dart';
import 'package:gym/AddTrainer.dart';

class trainer extends StatefulWidget {
  const trainer({Key? key}) : super(key: key);

  @override
  State<trainer> createState() => _trainerState();
}

class _trainerState extends State<trainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Trainer"),
        actions: [

          IconButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>addtrainer1()));
          }, icon: Icon(Icons.person_add),)
        ],
      ),
      body: ListView(
        children: [


          Card(
            elevation: 7,
            shadowColor: Colors.blue,
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
                                  child: Text("Satish Jangid",textAlign: TextAlign.start,)),

                              TextButton.icon(onPressed: (){

                              }, icon:
                              Icon(Icons.call,size: 20,),
                                  label: Text("9672774256")),

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
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(

                                          child: Text("Address :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 30),
                                          child: Text("Sector 26 , Sanganer Jaipur , 302241")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Branch ID:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 27),
                                          child: Text("2")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Join Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 25),
                                          child: Text("21/8/2022")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("DOB :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 55),
                                          child: Text("18 March 2001")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Gender :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 40),
                                          child: Text("Male")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Experience :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 18),
                                          child: Text("3 Years")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Trainer Fee :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 17),
                                          child: Text("15000")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Email :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 50),
                                          child: Text("2001kapilsharma@gmail.com")),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

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
                            onTap: () {}, // button pressed
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
            elevation: 7,
            shadowColor: Colors.blue,
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
                                  child: Text("LoveKush",textAlign: TextAlign.start,)),

                              TextButton.icon(onPressed: (){

                              }, icon:
                              Icon(Icons.call,size: 20,),
                                  label: Text("9954258961")),

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
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(

                                          child: Text("Address :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 30),
                                          child: Text("Sector 6 , Pratap Nagar Jaipur , 302001h")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          //width: 150,
                                          child: Text("Branch ID:",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 27),
                                          child: Text("1")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Join Date :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 25),
                                          child: Text("12/5/2022")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("DOB :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 55),
                                          child: Text("24 Aprail 1999")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Gender :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 40),
                                          child: Text("Male")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Experience :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 18),
                                          child: Text("5 Years")),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Trainer Fee :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 17),
                                          child: Text("12500")),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //width: 150,
                                          child: Text("Email :",style: TextStyle(color: Colors.black45,fontSize: 13))),
                                      Container(
                                          width: 250,

                                          margin: EdgeInsets.only(left: 50),
                                          child: Text("pankajkumar857@gmail.com")),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

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
                            onTap: () {}, // button pressed
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class totalexpense extends StatefulWidget {
  const totalexpense({Key? key}) : super(key: key);

  @override
  State<totalexpense> createState() => _totalexpenseState();
}

class _totalexpenseState extends State<totalexpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Expenses"),),
      body: Column(
        children: [
          Container(

            child: Column(

              children: [

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Total",style: TextStyle(color: Colors.black,fontSize: 18),),

                       Container(
                         height: 40,
                         width: 1.5,
                         color: Colors.black45,
                         alignment: Alignment.center,
                       ),
                          Column(
                            children: [
                              Text("Expanse",style: TextStyle(color: Colors.black54,fontSize: 15),),
                              Text("1000.0",style: TextStyle(color: Colors.black,fontSize: 18),),
                            ],
                          )
                        ],
                      ),
                    ),

                  ),
                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all( 10.0),
                          child: Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.redAccent),
                              child: Text(
                                "19 Apr 22",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              )),
                        ),

                        Column(
                            children: [
                              Container(
                                  width: 150,
                                  child: Text("Tital",style: TextStyle(color: Colors.black54),)),
                              Container(
                                  width: 150,
                                  child: Text("gym")),
                              Container(
                                  width: 150,
                                  child: Text("Amount",style: TextStyle(color: Colors.black54),)),
                              Container(
                                  width: 150,
                                  child: Text("1000.0"))
                            ],
                          ),
                        Expanded(

                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            child: SizedBox.fromSize(
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
                          ),
                        ),

                        Expanded(

                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            child: SizedBox.fromSize(
                              size: Size(56, 56), // button width and height
                              child: ClipOval(

                                child: InkWell(
                                  onTap: () {}, // button pressed
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.delete_forever,color: Color(
                                          0xFFA10512),), // icon
                                      Text("Delete",style: TextStyle(color: Colors.blue,fontSize: 11),), // text
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(

                          child: InkWell(

                            child: Container(
                                height: 30,

                                alignment: Alignment.center,
                                //width: double.infinity,
                                margin: EdgeInsets.only(top: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                  boxShadow: [
                                   // BoxShadow(color: Colors.black38, spreadRadius: 1),
                                  ],
                                ),


                                child: Text("View",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                   // Align(
                   //   alignment: Alignment.bottomRight,
                   //
                   //   child: Container(
                   //       height: 50,
                   //       width: 50,
                   //
                   //       decoration: BoxDecoration(
                   //         borderRadius: BorderRadius.circular(50),
                   //         color: Colors.deepOrangeAccent
                   //       ),
                   //       child: Icon(Icons.add,color: Colors.white,)),
                   // )

                Container(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(

                      elevation: 0.0,
                      child: new Icon(Icons.check),
                      backgroundColor: new Color(0xFFE57373),
                      onPressed: (){}
                  ),
                ),

                Container(

                  child: TextButton(onPressed: (){

                  }, child: Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                                boxShadow: [
                                  // BoxShadow(color: Colors.black38, spreadRadius: 1),
                                ],
                              ),
                              child: Text("Export as xls",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                        ),
                      ),

                      Expanded(
                        flex: 30,
                        child:
                        Container(
height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                              boxShadow: [
                                // BoxShadow(color: Colors.black38, spreadRadius: 1),
                              ],
                            ),
                            child: Text("Export as PDF",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

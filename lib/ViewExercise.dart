import 'package:flutter/material.dart';

class viewexercise extends StatefulWidget {
  const viewexercise({Key? key}) : super(key: key);

  @override
  State<viewexercise> createState() => _viewexerciseState();
}

class _viewexerciseState extends State<viewexercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Exercise"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/chest4.jpg'),fit: BoxFit.cover)
                                )
                              ),


                        ),
                        Column(
                          children: [
                            Container(
                              width:200,
                                child: Text("Dips",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),

                        Container(
                          width: 200,
                          child: Row(
                            children: [
                              Text("Reps :",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("12")
                            ],
                          ),
                        ),
                            Container(
                              width: 200,
                              child: Row(
                                children: [
                                  Text("Sets :",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("20")
                                ],
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                children: [
                                  Text("Time :",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("30 min")
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
                        color: Colors.black,
                        height: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Description :",style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(
                              width: 280,
                              child: Text("Usually dips are done on a dip bar, with the exerciser's hands supporting their entire body weight"))
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

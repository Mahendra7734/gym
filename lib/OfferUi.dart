import 'package:flutter/material.dart';

class offer extends StatefulWidget {
  const offer({Key? key}) : super(key: key);

  @override
  State<offer> createState() => _offerState();
}

class _offerState extends State<offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offer"),
      //backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.black ,
      body: ListView(

        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
              elevation: 10,
              shadowColor: Colors.red,
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
                                    image: AssetImage('assets/images/Nutrition_food2.jpg'),fit: BoxFit.cover)
                            )
                        ),


                      ),
                      Column(
                        children: [
                          Container(
                              width:200,
                              child: Text("Reward Staff for Excellence",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("One Time",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                //Text("10%",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Start Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 28/06/2022",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("End Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 05/07/2022",style: TextStyle(color: Colors.black),)
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
                      //  Text("Description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        Container(
                            width: 310,
                            child: Text("rustic, traditional, hearth-baked crust,rustic,.",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ],

              ),
          ),
           ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shadowColor: Colors.red,
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
                                    image: AssetImage('assets/images/Nutrition_food3.jpg'),fit: BoxFit.cover)
                            )
                        ),


                      ),
                      Column(
                        children: [
                          Container(
                              width:200,
                              child: Text("Reward Staff for Excellence",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Discount :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("10%",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Start Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 28/06/2022",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("End Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 05/07/2022",style: TextStyle(color: Colors.black),)
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
                        Text("Description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        Container(
                            width: 280,
                            child: Text("rustic, traditional, hearth-baked crust,.",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shadowColor: Colors.red,
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
                                    image: AssetImage('assets/images/burger.jpg'),fit: BoxFit.cover)
                            )
                        ),


                      ),
                      Column(
                        children: [
                          Container(
                              width:200,
                              child: Text("Reward Staff for Excellence",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Discount :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("10%",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Start Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 28/06/2022",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("End Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 05/07/2022",style: TextStyle(color: Colors.black),)
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
                        Text("Description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        Container(
                            width: 280,
                            child: Text("rustic, traditional, hearth-baked crust,.",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shadowColor: Colors.red,
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
                                    image: AssetImage('assets/images/Laccha_pratha.jpg'),fit: BoxFit.cover)
                            )
                        ),


                      ),
                      Column(
                        children: [
                          Container(
                              width:200,
                              child: Text("Reward Staff for Excellence",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Discount :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("10%",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Start Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 28/06/2022",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("End Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 05/07/2022",style: TextStyle(color: Colors.black),)
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
                        Text("Description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        Container(
                            width: 280,
                            child: Text("rustic, traditional, hearth-baked crust,.",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shadowColor: Colors.red,
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
                                    image: AssetImage('assets/images/Laccha_pratha3.jpg'),fit: BoxFit.cover)
                            )
                        ),


                      ),
                      Column(
                        children: [
                          Container(
                              width:200,
                              child: Text("Reward Staff for Excellence",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Discount :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text("10%",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("Start Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 28/06/2022",style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),

                          Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text("End Date :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                Text(" 05/07/2022",style: TextStyle(color: Colors.black),)
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
                        Text("Description :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                        Container(
                            width: 280,
                            child: Text("rustic, traditional, hearth-baked crust,.",style: TextStyle(color: Colors.black),))
                      ],
                    ),
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

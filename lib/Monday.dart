import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class monday extends StatefulWidget {
  const monday({Key? key}) : super(key: key);

  @override
  State<monday> createState() => _mondayState();
}

class _mondayState extends State<monday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  margin: EdgeInsets.only(top: 50,left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("Fitness",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.right,)),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: double.infinity,

                child: Card(
                 child: Column(
                   children: [
                     Padding(padding: EdgeInsets.only(left: 10,top: 10),

                       child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Running',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           ),
                           // Padding(
                           //   padding:  EdgeInsets.only(right: 20),
                           //   child: Ic(Icons.camera_alt),
                           // ),
                         ],

                       ),

                     ),
                     Padding(padding: EdgeInsets.all(20),
                       child: Container(
                         height: 200,
                         child: ListView(

                           scrollDirection: Axis.horizontal,

                           children: [

                             Column(
                               children: [
                                 Container(
                                  height: 130,
                                   width: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(15)),
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/running.jpg'),
                                       fit: BoxFit.cover,
                                     ),

                                   ),
                                   // child: Image.network('https://i.insider.com/5b21452f1ae6623b008b5306?width=600&format=jpeg&auto=webp'),
                                 ),
                                 Container(
                                      width: 150,
                                     child: Text("Run 10Km",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                 Container(
                                     //width: 110,
                                     margin: EdgeInsets.only(top: 25),
                                     child: Text("8 weeks",style: TextStyle(color: Colors.black54),))
                               ],
                             ),
                             SizedBox(width: 15,),
                             Column(
                               children: [
                                 Container(
                                   width: 130,
                                   height: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(15),),
                                     image: DecorationImage(

                                       image: AssetImage('assets/images/running1.jpg',),
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                   //  child: Image.network('https://www.bloglet.com/gallery/the-most-popular-instrumental-music/the-most-popular-instrumental-music.jpg'),

                                 ),
                                 Container(
                                     width: 140,
                                     child: Text("First attempt at 10km",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                 Container(
                                    // width: 140,
                                     margin: EdgeInsets.only(top: 10),
                                     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                               ],
                             ),
                             SizedBox(width: 15,),
                             Column(
                               children: [
                                 Container(
                                   width: 130,
                                   height: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(12),),
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/running2.webp'),
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                   //child: Image.network('https://i.pinimg.com/originals/af/f8/7a/aff87a030262fe7041f820413a079a0c.jpg'),

                                 ),
                                 Container(
                                     width: 150,
                                     child: Text("Run 5Km",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                 Container(
                                    // width: 110,
                                     margin: EdgeInsets.only(top: 25),
                                     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                               ],
                             ),
                             SizedBox(width: 15,),
                             Column(
                               children: [
                                 Container(
                                   width: 130,
                                   height: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(12),),
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/running3.webp'),
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                   // child: Image.network('https://imgix.ranker.com/list_img_v2/16056/936056/original/best-genres-of-music-u2?w=817&h=427&fm=jpg&q=50&fit=crop'),

                                 ),
                                 Container(
                                     width: 150,
                                     child: Text("Baby steps to 5Km",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                 Container(
                                   // width: 110,
                                     margin: EdgeInsets.only(top: 25),
                                     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                               ],
                             ),
                             SizedBox(width: 15,),
                             Column(
                               children: [
                                 Container(
                                   width: 130,
                                   height: 130,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(12),),
                                     image: DecorationImage(
                                       image: AssetImage('assets/images/running4.jpg'),
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),
                                 Container(
                                     width: 150,
                                     child: Text("Young steps to 5Km",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                 Container(
                                   // width: 110,
                                     margin: EdgeInsets.only(top: 25),
                                     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                               ],
                             ),

                           ],
                         ),

                       ),

                     ),
                     // SingleChildScrollView(
                     //   scrollDirection: Axis.horizontal,
                     //   child: Row(
                     //     children: [
                     //     ],
                     //   ),
                     // )
                   ],
                 ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: double.infinity,

                child: Card(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,top: 10),

                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Arms',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            // Padding(
                            //   padding:  EdgeInsets.only(right: 20),
                            //   child: Ic(Icons.camera_alt),
                            // ),
                          ],

                        ),

                      ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Container(
                          height: 170,
                          child: ListView(

                            scrollDirection: Axis.horizontal,

                            children: [

                              Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/arms1.jpg'),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                    // child: Image.network('https://i.insider.com/5b21452f1ae6623b008b5306?width=600&format=jpeg&auto=webp'),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Lat pulldown ",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   //width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("8 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15),),
                                      image: DecorationImage(

                                        image: AssetImage('assets/images/arms.jpg',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //  child: Image.network('https://www.bloglet.com/gallery/the-most-popular-instrumental-music/the-most-popular-instrumental-music.jpg'),

                                  ),
                                  Container(
                                      width: 140,
                                      child: Text("How to get big arms fast",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 140,
                                  //     margin: EdgeInsets.only(top: 10),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/arms2.webp'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //child: Image.network('https://i.pinimg.com/originals/af/f8/7a/aff87a030262fe7041f820413a079a0c.jpg'),

                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Cross trainer",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/arms3.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // child: Image.network('https://imgix.ranker.com/list_img_v2/16056/936056/original/best-genres-of-music-u2?w=817&h=427&fm=jpg&q=50&fit=crop'),

                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("The assisted pull up machine",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),


                            ],
                          ),

                        ),

                      ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: double.infinity,

                child: Card(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,top: 10),

                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chest',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            // Padding(
                            //   padding:  EdgeInsets.only(right: 20),
                            //   child: Ic(Icons.camera_alt),
                            // ),
                          ],

                        ),

                      ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Container(
                          height: 170,
                          child: ListView(

                            scrollDirection: Axis.horizontal,

                            children: [

                              Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/chest.jpg'),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                    // child: Image.network('https://i.insider.com/5b21452f1ae6623b008b5306?width=600&format=jpeg&auto=webp'),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Home Chest Workout",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   //width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("8 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15),),
                                      image: DecorationImage(

                                        image: AssetImage('assets/images/chest1.webp',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //  child: Image.network('https://www.bloglet.com/gallery/the-most-popular-instrumental-music/the-most-popular-instrumental-music.jpg'),

                                  ),
                                  Container(
                                      width: 140,
                                      child: Text("Dumbbell Workout to Build Your Chest",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 140,
                                  //     margin: EdgeInsets.only(top: 10),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/chest2.webp'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //child: Image.network('https://i.pinimg.com/originals/af/f8/7a/aff87a030262fe7041f820413a079a0c.jpg'),

                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Dumbbell Chest Roll ",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/chest3.webp'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // child: Image.network('https://imgix.ranker.com/list_img_v2/16056/936056/original/best-genres-of-music-u2?w=817&h=427&fm=jpg&q=50&fit=crop'),

                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Low Incline Chest Fly",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/chest4.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Decline Push-ups",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),

                            ],
                          ),

                        ),

                      ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: double.infinity,

                child: Card(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10,top: 10),

                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Back',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            // Padding(
                            //   padding:  EdgeInsets.only(right: 20),
                            //   child: Ic(Icons.camera_alt),
                            // ),
                          ],

                        ),

                      ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Container(
                          height: 190,
                          child: ListView(

                            scrollDirection: Axis.horizontal,

                            children: [

                              Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/back.jpg'),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                    // child: Image.network('https://i.insider.com/5b21452f1ae6623b008b5306?width=600&format=jpeg&auto=webp'),
                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("Single-Arm Dumbbell Rows",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   //width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("8 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15),),
                                      image: DecorationImage(

                                        image: AssetImage('assets/images/back1.png',),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //  child: Image.network('https://www.bloglet.com/gallery/the-most-popular-instrumental-music/the-most-popular-instrumental-music.jpg'),

                                  ),
                                  Container(
                                      width: 140,
                                      child: Text("How to do bird dogs",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 140,
                                  //     margin: EdgeInsets.only(top: 10),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/back2.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //child: Image.network('https://i.pinimg.com/originals/af/f8/7a/aff87a030262fe7041f820413a079a0c.jpg'),

                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("The Best and Worst Exercises for Back Pain",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(
                                children: [
                                  Container(
                                    width: 130,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12),),
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/back3.webp'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // child: Image.network('https://imgix.ranker.com/list_img_v2/16056/936056/original/best-genres-of-music-u2?w=817&h=427&fm=jpg&q=50&fit=crop'),

                                  ),
                                  Container(
                                      width: 150,
                                      child: Text("When Lower Back Pain After a Workout Is Cause for Concern",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                  // Container(
                                  //   // width: 110,
                                  //     margin: EdgeInsets.only(top: 25),
                                  //     child: Text("10 weeks",style: TextStyle(color: Colors.black54),))
                                ],
                              ),


                            ],
                          ),

                        ),

                      ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

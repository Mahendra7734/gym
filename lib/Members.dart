
import 'package:flutter/material.dart';
import 'ActiveMembers.dart';
class mambers extends StatefulWidget {
  const mambers({Key? key}) : super(key: key);

  @override
  State<mambers> createState() => _mambersState();
}

class _mambersState extends State<mambers> {
  List<String> image = [
    'assets/images/members(1).png',
    'assets/images/member5.png',
    'assets/images/group.png',
    'assets/images/group.png',
    'assets/images/wallet(1).png',
    'assets/images/hand.png',
    'assets/images/dollar.png',
    'assets/images/expenses.png',
    'assets/images/cake.png',
    'assets/images/planning.png',
    'assets/images/planning.png',
    'assets/images/calendar.png',


  ];
  List<String> name = [
    "Active Members",
    "New Members",
    "All Members",
    "Expire Member",
    "Due Amount",
    "Today Collection",
    "Total Collection",
    "Total Expense",
    "Birthday",
    "Manage Plan",
    "Assign Plan",
    "Payroll",
    "CRUD Trainer",
    "CRUD Plan",
    "Offers"
        "Birthdays",
    "Today Attandance"
  ];
  List<String> name1 = [
    "4",
    "7",
    "2",
    "1",
    "1.2k",
    "2.0k",
    "3.2k",
    "500",
    "1",
    "20",
    "2"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Due Amount'),
          backgroundColor: Colors.teal,

        ),
        // body: DefaultTabController(
        //   length: 2,
        //   child: Column(
        //     children: <Widget>[
        //       Material(
        //         color: Colors.teal,
        //         child: Container(
        //             height: 50,
        //             alignment: Alignment.center,
        //             child: Text("Total Due: 1200",style: TextStyle(color: Colors.white,fontSize: 20),)),
        //       ),
        //       Container(
        //         constraints: BoxConstraints(maxHeight: 150.0),
        //         child: Material(
        //           color: Colors.white60,
        //           child: TabBar(
        //
        //             tabs: [
        //
        //               Container(
        //                   height: 40,
        //                   width: double.infinity,
        //                   margin: EdgeInsets.only(top: 10),
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(10),
        //                     color: Colors.white,
        //                     boxShadow: [
        //                       BoxShadow(color: Colors.black38, spreadRadius: 1),
        //                     ],
        //                   ),
        //
        //
        //                   child: Tab(text: "GYM Member",)
        //               ),
        //
        //
        //               Container(
        //                   margin: EdgeInsets.only(top: 10),
        //
        //                   height: 40,
        //                   width: double.infinity,
        //                   decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(10),
        //                     color: Colors.white,
        //                     boxShadow: [
        //                       BoxShadow(color: Colors.black38, spreadRadius: 1),
        //                     ],
        //                   ),
        //                   child: Tab(text: "Add On Member",)
        //               ),
        //
        //
        //             ],
        //             labelColor: Colors.blueAccent,
        //             indicatorWeight: 1.0,
        //             unselectedLabelColor: Colors.black,
        //             indicatorSize: TabBarIndicatorSize.label,
        //             indicatorPadding: EdgeInsets.all(10.0),
        //             indicatorColor: Colors.white,
        //
        //
        //           ),
        //         ),
        //       ),
        //       Expanded(
        //         child: Container(
        //           margin: EdgeInsets.only(top: 20),
        //           child: TabBarView(
        //             children: [
        //               // gymmember(),
        //               // addonmember()
        //
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Column(
          children: [
            Container(
              height: 170,
              child: Expanded(
                flex: 30,
                child: Container(
                  // width: 125,
                  height: 115,
                  // margin: EdgeInsets.only(top: 10,left: 2),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => livemember()),
                    ),
                    child: Card(
                      color: Colors.red,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(
                              color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(
                                // width: 25,
                                // height: 25,

                                //margin: EdgeInsets.only(top: 20,right: 0),
                                child: Image.asset(image[0])),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [


                                  Container(

                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      name[0],style: TextStyle(color: Colors.black,fontSize: 25),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),

                                  Container(

                                    // alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //     borderRadius:
                                    //     BorderRadius.circular(50),
                                    //     color: Colors.white),
                                      margin: EdgeInsets.only(left: 40),
                                      child: Text(
                                        name1[0],
                                        style: TextStyle(color: Colors.black,fontSize: 25),
                                      )),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              height: 170,
              child: Expanded(
                flex: 30,
                child: Container(
                  // width: 125,
                  height: 115,
                  // margin: EdgeInsets.only(top: 10,left: 2),
                  child: InkWell(
                    // onTap: () => Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => livemember()),
                    // ),
                    child: Card(
                      color: Colors.blueGrey,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          side: new BorderSide(
                              color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Container(
                              // width: 100,
                              //  height: 100,

                              //margin: EdgeInsets.only(top: 20,right: 0),
                                child: Image.asset(image[1])),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [


                                  Container(

                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      name[1],style: TextStyle(color: Colors.black,fontSize: 25),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),

                                  Container(

                                    // alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //     borderRadius:
                                    //     BorderRadius.circular(50),
                                    //     color: Colors.white),
                                      margin: EdgeInsets.only(left: 40),
                                      child: Text(
                                        name1[1],
                                        style: TextStyle(color: Colors.black,fontSize: 25),
                                      )),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Card(
              
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Expire Members : ",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text("12",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                  Container(
                      height: 170,
                      width: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.teal,)
                    ),
                    //ClipRRect for image border radius
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/gymmembers.jpg',
                        width: 500,
                        fit: BoxFit.cover,
                      ),
                    ),

                     // child: Image.asset('assets/images/gymmembers.jpg')
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

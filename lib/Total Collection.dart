import 'package:flutter/material.dart';



class totalcollection extends StatefulWidget {
  const totalcollection({Key? key}) : super(key: key);

  @override
  State<totalcollection> createState() => _totalcollectionState();
}

class _totalcollectionState extends State<totalcollection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Total Collection'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.wysiwyg_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
height: 45,
              decoration: new BoxDecoration(color: Colors.blue),
              child: new Center(
                child: new Text("Total (3.2 k)",style: TextStyle(color: Colors.white,fontSize: 22),),
              ),

            ),

            Expanded(

              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV6",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Bhim",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("May 06,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("200 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV5",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("ASP mahendra gangapur city",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("May 06,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("100 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV4",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Vishnu",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("May 04,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("100 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV3",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("ASP mahendra gangapur city",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Apr 30,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("350 (Online Payment)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV2",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Golu",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Apr 30,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("200 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV1",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Mahendra Saini",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Apr 19,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("300 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV6",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Bhim",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("May 06,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("200 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(

                        child: Row(
                          children: [
                            Expanded(
                              flex: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Receipt No.:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("INV6",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Name:",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("Bhim",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:130,
                                        child: Text("Date",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("May 06,2022",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                    Container(
                                        width:130,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Paid Amount",style: TextStyle(color: Colors.black45,fontSize: 12),)),
                                    Container(
                                        width:130,
                                        child: Text("200 (Cash)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

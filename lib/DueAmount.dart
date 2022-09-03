import 'package:flutter/material.dart';
class dueamount extends StatefulWidget {
  const dueamount({Key? key}) : super(key: key);

  @override
  State<dueamount> createState() => _dueamountState();
}

class _dueamountState extends State<dueamount> {
  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       leading: Icon(Icons.arrow_back),
    //       title: Text('Due Amount'),
    //       backgroundColor: Colors.teal,
    //
    //     ),
    //     body: DefaultTabController(
    //       length: 2,
    //       child: Column(
    //         children: <Widget>[
    //           Material(
    //             color: Colors.teal,
    //             child: Container(
    //                 height: 50,
    //                 alignment: Alignment.center,
    //                 child: Text("Total Due: 1200",style: TextStyle(color: Colors.white,fontSize: 20),)),
    //           ),
    //           Container(
    //             constraints: BoxConstraints(maxHeight: 150.0),
    //             child: Material(
    //               color: Colors.white60,
    //               child: TabBar(
    //
    //                 tabs: [
    //
    //                   Container(
    //                     height: 40,
    //                       width: double.infinity,
    //                       margin: EdgeInsets.only(top: 10),
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(10),
    //                        color: Colors.white,
    //                         boxShadow: [
    //                           BoxShadow(color: Colors.black38, spreadRadius: 1),
    //                         ],
    //                       ),
    //
    //
    //                       child: Tab(text: "GYM Member",)
    //                   ),
    //
    //
    //                   Container(
    //                     margin: EdgeInsets.only(top: 10),
    //
    //                       height: 40,
    //                       width: double.infinity,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(10),
    //                         color: Colors.white,
    //                         boxShadow: [
    //                           BoxShadow(color: Colors.black38, spreadRadius: 1),
    //                         ],
    //                       ),
    //                       child: Tab(text: "Add On Member",)
    //                   ),
    //
    //
    //                 ],
    //                 labelColor: Colors.blueAccent,
    //                 indicatorWeight: 1.0,
    //                 unselectedLabelColor: Colors.black,
    //                 indicatorSize: TabBarIndicatorSize.label,
    //                 indicatorPadding: EdgeInsets.all(10.0),
    //                 indicatorColor: Colors.white,
    //
    //
    //               ),
    //             ),
    //           ),
    //           Expanded(
    //             child: Container(
    //               margin: EdgeInsets.only(top: 20),
    //               child: TabBarView(
    //                 children: [
    //                   gymmember(),
    //                   addonmember()
    //
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //
    // );
    return Scaffold(
      appBar: AppBar(title: Text("Due Amount"),
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
      body: ListView(
        children: [

          Container(

            height: 240,
            child: Card(
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

                                    child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold),)),
                                Container(
                                    width: 100,
                                    child: Text("ASP Mahendra Gangapur City",textAlign: TextAlign.start,)),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text("Contact Number",style: TextStyle(fontWeight: FontWeight.bold),),
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
                        flex: 30,
                        child: Container(
                          child: Column(
                            children: [
                              Text("Total Amount",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("5000")
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: Container(
                          child: Column(
                            children: [
                              Text("Paid Amount",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("5000")
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: Container(
                          child: Column(
                            children: [
                              Text("Due Amount",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("5000",style: TextStyle(color: Colors.red),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      height: 1,
                    ),
                  ),

Container(
  margin: EdgeInsets.only(left: 20,top: 10),
  child:   Row(

    children: [
      Text("Paid Amount Date : ",style: TextStyle(fontWeight: FontWeight.bold),),
      Text("17/05/2022"),
    ],
  ),
)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

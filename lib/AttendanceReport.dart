import 'package:flutter/material.dart';

class attendancereport extends StatefulWidget {
  const attendancereport({Key? key}) : super(key: key);

  @override
  State<attendancereport> createState() => _attendancereportState();
}

class _attendancereportState extends State<attendancereport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance Report"),),
      body: Column(
        children: [
          Container(
             // width: 100,
            margin: EdgeInsets.only(left: 10,top: 20),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Name",
                style: TextStyle(color: Colors.blue),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 45,

              child: TextFormField(
                //controller: _namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // suffix: Text("available"),suffixStyle:
                  hintText: "Rajendra Kumar",
                  // prefixIcon: Icon(Icons.person),
                  //  suffixIcon: IconButton(
                  //    onPressed: () {
                  //      setState(() {
                  //        _namecontroller.clear();
                  //      });
                  //    },
                  //    icon: Icon(Icons.cancel),
                  //  )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name Is Empty';
                  }
                  return null;
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Container(
                        //width: 100,
                        child: Text(
                          "Date",
                          style: TextStyle(color: Colors.blue),
                        )),
                    Text("25/06/2022"),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //width: 100,
                                    child: Text(
                                      "In Time",
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                Text("10:30 AM"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //width: 100,
                                    child: Text(
                                      "Out Time",
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                Text("11:00 AM"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  //width: 100,
                                    child: Text(
                                      "Time",
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                Text("0 min"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ) ,
              ),
            ),
          )
        ],
      ),
    );
  }
}

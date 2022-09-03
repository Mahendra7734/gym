import 'package:flutter/material.dart';

class viewsalary extends StatefulWidget {
  const viewsalary({Key? key}) : super(key: key);

  @override
  State<viewsalary> createState() => _viewsalaryState();
}

class _viewsalaryState extends State<viewsalary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Salary"),
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "Name : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  )),
                                  Container(
                                      child: Text(
                                    "Mr. Manoj Kumar",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "Total Salary : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("12000",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17)),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                            )),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                        "Paid Salary : ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("6000",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17)),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Payment Method",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Chaeque",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Due Salary",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "6000",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Container(
                                            height: 12,
                                            width: 12,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                              color: Colors.red,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Paid Salary Month",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "October",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "Name : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  )),
                                  Container(
                                      child: Text(
                                    "Mr. Pankaj Jat",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "Total Salary : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("15000",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17)),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                        "Paid Salary : ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("10000",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17)),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Payment Method",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Chaeque",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Due Salary",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "5000",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Container(
                                            height: 12,
                                            width: 12,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                              color: Colors.red,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Paid Salary Month",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "August",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    side: new BorderSide(color: Colors.blue, width: 0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "Name : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  )),
                                  Container(
                                      child: Text(
                                    "Mr. Ravi Kumar Saini",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                    "Total Salary : ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17),
                                  )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("20000",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17)),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Text(
                                        "Paid Salary : ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 17),
                                      )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("20000",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17)),
                                        Container(
                                            height: 15,
                                            width: 15,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Payment Method",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Chaeque",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Due Salary",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "0",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        Container(
                                            height: 12,
                                            width: 12,
                                            child: Image.asset(
                                              'assets/images/rupee.png',
                                              color: Colors.red,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Paid Salary Month",
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "March",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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

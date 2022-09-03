import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym/Birthday.dart';
import 'package:gym/Drawer.dart';
import 'package:gym/DueAmount.dart';
import 'package:gym/NewMember.dart';
import 'package:gym/Plans.dart';
import 'package:gym/Today%20Collection.dart';
import 'package:gym/Total%20Collection.dart';
import 'package:gym/Total%20Expense.dart';
import 'package:gym/AllMembers.dart';
import 'package:gym/ExpiredMembers.dart';
import 'package:gym/ActiveMembers.dart';

//import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:d_chart/d_chart.dart';
//import 'package:fl_chart/fl_chart.dart';
import 'AddMember.dart';
//import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

// class SalesData {
//
//   final double year;
//   final double sales;
//
//   SalesData(this.year, this.sales);
// }

class mainactivity extends StatefulWidget {
  const mainactivity({Key? key}) : super(key: key);

  @override
  State<mainactivity> createState() => _mainactivityState();
}

class _mainactivityState extends State<mainactivity> {
 // late List<SalesData> _chartData;
  //  late TooltipBehavior _tooltipBehavior;
  //
  //
  // @override
  // void initState() {
  //  // _chartData=getChartData();
  //   _tooltipBehavior=TooltipBehavior(enable: true);
  //   super.initState();
  //
  //
  // }
  // List<Color> gradientColors = [
  //   const Color(0xff23b6e6),
  //   const Color(0xff02d39a),
  // ];
  //
  // bool showAvg = false;
  //
  // Widget bottomTitleWidgets(double value, TitleMeta meta) {
  //   const style = TextStyle(
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold,
  //     fontSize: 15,
  //   );
  //   Widget text;
  //   switch (value.toInt()) {
  //     case 2:
  //       text = const Text('MAR', style: style,);
  //       break;
  //     case 5:
  //       text = const Text('JUN', style: style);
  //       break;
  //     case 8:
  //       text = const Text('SEP', style: style);
  //       break;
  //     default:
  //       text = const Text('', style: style);
  //       break;
  //   }
  //
  //   return Padding(child: text, padding: const EdgeInsets.only(top: 8.0));
  // }

  // Widget leftTitleWidgets(double value, TitleMeta meta) {
  //   const style = TextStyle(
  //     color: Colors.white,
  //     fontWeight: FontWeight.bold,
  //     fontSize: 15,
  //   );
  //   String text;
  //   switch (value.toInt()) {
  //     case 1:
  //       text = '10K';
  //       break;
  //     case 3:
  //       text = '30k';
  //       break;
  //     case 5:
  //       text = '50k';
  //       break;
  //     default:
  //       return Container();
  //   }
  //
  //   return Text(text, style: style, textAlign: TextAlign.left);
  // }
  //
  // LineChartData mainData() {
  //   return LineChartData(
  //     gridData: FlGridData(
  //       show: true,
  //       drawVerticalLine: true,
  //       horizontalInterval: 1,
  //       verticalInterval: 1,
        // getDrawingHorizontalLine: (value) {
        //   return FlLine(
        //     color: const Color(0xff37434d),
        //     strokeWidth: 1,
        //   );
        // },
        // getDrawingVerticalLine: (value) {
        //   return FlLine(
        //     color: const Color(0xff37434d),
        //     strokeWidth: 1,
        //   );
        // },
    //  ),
  //     titlesData: FlTitlesData(
  //       show: true,
  //       rightTitles: AxisTitles(
  //         sideTitles: SideTitles(showTitles: false),
  //       ),
  //       // topTitles: AxisTitles(
  //       //   sideTitles: SideTitles(showTitles: false),
  //       // ),
  //       bottomTitles: AxisTitles(
  //         sideTitles: SideTitles(
  //           showTitles: true,
  //           reservedSize: 30,
  //           interval: 1,
  //           getTitlesWidget: bottomTitleWidgets,
  //         ),
  //       ),
  //       leftTitles: AxisTitles(
  //         sideTitles: SideTitles(
  //           showTitles: true,
  //           interval: 1,
  //           getTitlesWidget: leftTitleWidgets,
  //           reservedSize: 30,
  //         ),
  //       ),
  //     ),
  //     borderData: FlBorderData(
  //         show: true,
  //         border: Border.all(color: const Color(0xff37434d), width: 1)),
  //     minX: 0,
  //     maxX: 11,
  //     minY: 0,
  //     maxY: 6,
  //     lineBarsData: [
  //       LineChartBarData(
  //         spots: const [
  //           FlSpot(0, 3),
  //           FlSpot(2.6, 2),
  //           FlSpot(4.9, 5),
  //           FlSpot(6.8, 3.1),
  //           FlSpot(8, 4),
  //           FlSpot(9.5, 3),
  //           FlSpot(11, 4),
  //         ],
  //         isCurved: true,
  //         gradient: LinearGradient(
  //           colors: gradientColors,
  //           begin: Alignment.centerLeft,
  //           end: Alignment.centerRight,
  //         ),
  //         barWidth: 3,
  //         isStrokeCapRound: true,
  //         dotData: FlDotData(
  //           show: false,
  //         ),
  //         belowBarData: BarAreaData(
  //           show: true,
  //           gradient: LinearGradient(
  //             colors: gradientColors
  //                 .map((color) => color.withOpacity(0.3))
  //                 .toList(),
  //             begin: Alignment.centerLeft,
  //             end: Alignment.centerRight,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }
  //
  // LineChartData avgData() {
  //   return LineChartData(
  //     lineTouchData: LineTouchData(enabled: false),
  //     gridData: FlGridData(
  //       show: true,
  //       drawHorizontalLine: true,
  //       verticalInterval: 1,
  //       horizontalInterval: 1,
  //       getDrawingVerticalLine: (value) {
  //         return FlLine(
  //           color: const Color(0xff37434d),
  //           strokeWidth: 1,
  //         );
  //       },
  //       getDrawingHorizontalLine: (value) {
  //         return FlLine(
  //           color: const Color(0xff37434d),
  //           strokeWidth: 1,
  //         );
  //       },
  //     ),
  //     titlesData: FlTitlesData(
  //       show: true,
  //       bottomTitles: AxisTitles(
  //         sideTitles: SideTitles(
  //           showTitles: true,
  //           reservedSize: 30,
  //           getTitlesWidget: bottomTitleWidgets,
  //           interval: 1,
  //         ),
  //       ),
  //       leftTitles: AxisTitles(
  //         sideTitles: SideTitles(
  //           showTitles: true,
  //           getTitlesWidget: leftTitleWidgets,
  //           reservedSize: 42,
  //           interval: 1,
  //         ),
  //       ),
  //       topTitles: AxisTitles(
  //         sideTitles: SideTitles(showTitles: false),
  //       ),
  //       rightTitles: AxisTitles(
  //         sideTitles: SideTitles(showTitles: false),
  //       ),
  //     ),
  //     borderData: FlBorderData(
  //         show: true,
  //         border: Border.all(color: const Color(0xff37434d), width: 1)),
  //     minX: 0,
  //     maxX: 11,
  //     minY: 0,
  //     maxY: 6,
  //     lineBarsData: [
  //       LineChartBarData(
  //         spots: const [
  //           FlSpot(0, 3.44),
  //           FlSpot(2.6, 3.44),
  //           FlSpot(4.9, 3.44),
  //           FlSpot(6.8, 3.44),
  //           FlSpot(8, 3.44),
  //           FlSpot(9.5, 3.44),
  //           FlSpot(11, 3.44),
  //         ],
  //         isCurved: true,
  //         gradient: LinearGradient(
  //           colors: [
  //             ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //                 .lerp(0.2)!,
  //             ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //                 .lerp(0.2)!,
  //           ],
  //           begin: Alignment.centerLeft,
  //           end: Alignment.centerRight,
  //         ),
  //         barWidth: 5,
  //         isStrokeCapRound: true,
  //         dotData: FlDotData(
  //           show: false,
  //         ),
  //         belowBarData: BarAreaData(
  //           show: true,
  //           gradient: LinearGradient(
  //             colors: [
  //               ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //                   .lerp(0.2)!
  //                   .withOpacity(0.1),
  //               ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //                   .lerp(0.2)!
  //                   .withOpacity(0.1),
  //             ],
  //             begin: Alignment.centerLeft,
  //             end: Alignment.centerRight,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/images/group.png',
      'assets/images/group.png',
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
      "assets/images/hand.png",
    ];
    List<String> name = [
      "Active Members",
      "All Members",
      "New Members",
      "Expire Member",
      "Due Amount",
      "Today Collection",
      "Total Collection",
      "Total Expense",
      "Up Coming Birthday",
      "Manage Plan",
      "Assign Plan",
      "Blood Pressure",
      "Body Fat",
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

    return Scaffold(
      appBar: AppBar(
        title: Text("Mahendra Saini"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person_add,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>addmember()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () async {
              //String telephoneNumber = '+91 9928517734';
              String telephoneNumber = '+91 9928517734';
              String telephoneUrl = "sms:$telephoneNumber";
              if (await canLaunch(telephoneUrl)) {
                await launch(telephoneUrl);
              } else {
                throw "Error occured trying to call that number.";
              }

            },
          ),
          IconButton(
            icon: Icon(
              Icons.whatsapp,
              color: Colors.white,
            ),
            onPressed: () async{
              // do something
              //Share.share('check out my website https://example.com', subject: 'Look what I made!');
             // String telephoneNumber = '+91 9928517734';
              String telephoneUrl = "https://maps.google.com";
              if (await canLaunch(telephoneUrl)) {
              await launch(telephoneUrl);
              } else {
              throw "Error occured trying to call that number.";
              }
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      drawer: drawer(),
      body: Container(
        color: Colors.white10,
        child: ListView(
          children: [
            //SfCartesianChart(),





                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Collection Report",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 200,
                //     width: double.infinity,
                //     child: Stack(
                //           children: <Widget>[
                //             AspectRatio(
                //               aspectRatio: 2,
                //               child: Container(
                //
                //                 decoration: const BoxDecoration(
                //                     borderRadius: BorderRadius.all(
                //                       Radius.circular(5),
                //                     ),
                //                     color: Color(0xff232d37)),
                //                 child: Padding(
                //                   padding: const EdgeInsets.only(
                //                       right: 0, left: 10, top: 10, bottom: 0),
                //                   child: LineChart(
                //                     showAvg ? avgData() : mainData(),
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             SizedBox(
                //               width: 60,
                //               height: 34,
                //               child: TextButton(
                //                 onPressed: () {
                //                   setState(() {
                //                     showAvg = !showAvg;
                //                   });
                //                 },
                //                 child: Text(
                //                   'avg',
                //                   style: TextStyle(
                //                       fontSize: 12,
                //                       color:
                //                       showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: DChartLine(
                      lineColor: (lineData, index, id) {
                        return id == 'Line 1'
                            ? Colors.blue
                            : id == 'Line 2'
                            ? Colors.amber
                            : Colors.green;
                      },
                      pointColor: (lineData, index, id) {
                        return id == 'Line 1'
                            ? Colors.blue.shade900
                            : id == 'Line 2'
                            ? Colors.amber.shade900
                            : Colors.green.shade900;
                      },
                      data: [
                        {
                          'id': 'Line 1',
                          'data': [
                            {'domain': 0, 'measure': 0.5},
                            {'domain': 2, 'measure': 1},
                            {'domain': 3, 'measure': 3},
                            {'domain': 4, 'measure': 2.3},
                            {'domain': 5, 'measure': 3},
                          ],
                        },
                        // {
                        //   'id': 'Line 2',
                        //   'data': [
                        //     {'domain': 1, 'measure': 4},
                        //     {'domain': 2, 'measure': 5},
                        //     {'domain': 3, 'measure': 4.5},
                        //     {'domain': 4, 'measure': 7},
                        //     {'domain': 5, 'measure': 8},
                        //   ],
                        // },
                        {
                          'id': 'Line 3',
                          'data': [
                            {'domain': 0, 'measure': 8.2},
                            {'domain': 2, 'measure': 8},
                            {'domain': 3, 'measure': 9},
                            {'domain': 4, 'measure': 10},
                            {'domain': 5, 'measure': 12},
                          ],
                        },
                      ],
                      includePoints: true,
                      includeArea: true,
                    ),
                  ),
                ),

                Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "FINANCIAL",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Container(
                                // width: 125,
                                height: 115,
                                // margin: EdgeInsets.only(top: 10,left: 2),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => dueamount()),
                                  ),
                                  child: Card(
                                    color: Colors.indigo,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 25,
                                                    height: 25,

                                                    //margin: EdgeInsets.only(top: 20,right: 0),
                                                    child: Image.asset(image[4],
                                                        color: Colors.white)),
                                                Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                    child: Text(
                                                  name1[4],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 120,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              name[4],
                                              style: TextStyle(
                                                  color: Colors.white),
                                              // textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Container(
                                // width: 125,
                                height: 115,
                                // margin: EdgeInsets.only(top: 10,left: 2),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => todaycollectin()),
                                  ),
                                  child: Card(
                                    color: Colors.teal,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 25,
                                                    height: 25,

                                                    //margin: EdgeInsets.only(top: 20,right: 0),
                                                    child: Image.asset(image[5],
                                                        color: Colors.white)),
                                                Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                    child: Text(
                                                  name1[5],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 120,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              name[5],
                                              style: TextStyle(
                                                  color: Colors.white),
                                              // textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Container(
                                // width: 125,
                                height: 115,
                                // margin: EdgeInsets.only(top: 10,left: 2),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            totalcollection()),
                                  ),
                                  child: Card(
                                    color: Colors.orange,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 25,
                                                    height: 25,

                                                    //margin: EdgeInsets.only(top: 20,right: 0),
                                                    child: Image.asset(image[6],
                                                        color: Colors.white)),
                                                Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                    child: Text(
                                                  name1[6],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 120,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              name[6],
                                              style: TextStyle(
                                                  color: Colors.white),
                                              // textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Container(
                                // width: 125,
                                height: 115,
                                // margin: EdgeInsets.only(top: 10,left: 2),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => totalexpense()),
                                  ),
                                  child: Card(
                                    color: Colors.deepPurpleAccent,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 25,
                                                    height: 25,

                                                    //margin: EdgeInsets.only(top: 20,right: 0),
                                                    child: Image.asset(image[7],
                                                        color: Colors.white)),
                                                Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                    child: Text(
                                                  name1[7],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 120,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              name[7],
                                              style: TextStyle(
                                                  color: Colors.white),
                                              // textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            Container(

                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => livemember()),
                  ),
                  child:     Column(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(bottom: 10),

                        child: ListTile(
                          title: Text('Member Report',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          //tileColor: Colors.green[200],
                        ),
                      ),

                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: AspectRatio(
                            aspectRatio: 5 / 7,
                            child: DChartBar(
                              data: [
                                {
                                  'id': 'Bar 1',
                                  'data': [
                                    {'domain': 'Sun', 'measure': 2},
                                    {'domain': 'Mon', 'measure': 3},
                                    {'domain': 'Tue', 'measure': 4},
                                    {'domain': 'Wed', 'measure': 6},
                                    {'domain': 'Thu', 'measure': 1.5},
                                    {'domain': 'Fri', 'measure': 4},
                                    {'domain': 'Sat', 'measure': 1},
                                  ],
                                },
                                {
                                  'id': 'Bar 2',
                                  'data': [
                                    {'domain': 'Sun', 'measure': 4},
                                    {'domain': 'Mon', 'measure': 5},
                                    {'domain': 'Tue', 'measure': 2},
                                    {'domain': 'Wed', 'measure': 2},
                                    {'domain': 'Thu', 'measure': 2.5},
                                    {'domain': 'Fri', 'measure': 3.5},
                                    {'domain': 'Sat', 'measure': 5.5},
                                  ],
                                },
                              ],
                              // yAxisTitle: 'Month',
                              xAxisTitle: 'Day',
                              // measureMin: 0,
                              // measureMax: 8,
                              //minimumPaddingBetweenLabel: 1,
                              //domainLabelPaddingToAxisLine: 16,
                              //axisLineTick: 2,
                              // axisLinePointTick: 2,
                              //axisLinePointWidth: 10,
                              axisLineColor: Colors.green,
                              //measureLabelPaddingToAxisLine: 16,
                              barColor: (barData, index, id) => id == 'Bar 1'
                                  ? Colors.green.shade300
                                  : Colors.green.shade900,
                              // barValue: (barData, index) => '${barData['measure']}%',
                              //showBarValue: true,
                              //barValuePosition: BarValuePosition.outside,
                              //verticalDirection: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "MEMBERS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
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
                                      color: Colors.blueAccent,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 20),
                                              child: Row(
                                                //mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: 25,
                                                      height: 25,

                                                      //margin: EdgeInsets.only(top: 20,right: 0),
                                                      child: Image.asset(
                                                        image[0],
                                                        color: Colors.white,
                                                      )),
                                                  Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                      margin: EdgeInsets.only(
                                                          left: 40),
                                                      child: Text(
                                                        name1[0],
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 170,
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                name[0],
                                                style: TextStyle(
                                                    color: Colors.white),
                                                // textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 30,
                                child: Container(
                                  // width: 125,
                                  height: 115,
                                  // margin: EdgeInsets.only(top: 10,left: 2),
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => totalmember()),
                                    ),
                                    child: Card(
                                      color: Colors.blueGrey,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 20),
                                              child: Row(
                                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 25,
                                                      height: 25,

                                                      //margin: EdgeInsets.only(top: 20,right: 0),
                                                      child: Image.asset(image[1],
                                                          color: Colors.white)),
                                                  Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                      margin: EdgeInsets.only(
                                                          left: 40),
                                                      child: Text(
                                                        name1[1],
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 170,
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                name[1],
                                                style: TextStyle(
                                                    color: Colors.white),
                                                // textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  // width: 125,
                                  height: 115,
                                  // margin: EdgeInsets.only(top: 10,left: 2),
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => newmember()),
                                    ),
                                    child: Card(
                                      color: Colors.purple,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 25,
                                                      height: 25,

                                                      //margin: EdgeInsets.only(top: 20,right: 0),
                                                      child: Image.asset(image[2],
                                                          color: Colors.white)),
                                                  Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                      child: Text(
                                                        name1[2],
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 120,
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                name[2],
                                                style: TextStyle(
                                                    color: Colors.white),
                                                // textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 30,
                                child: Container(
                                  // width: 125,
                                  height: 115,
                                  // margin: EdgeInsets.only(top: 10,left: 2),
                                  child: InkWell(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => expiremember()),
                                    ),
                                    child: Card(
                                      color: Colors.deepOrange,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          side: new BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 25,
                                                      height: 25,

                                                      //margin: EdgeInsets.only(top: 20,right: 0),
                                                      child: Image.asset(image[3],
                                                          color: Colors.white)),
                                                  Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    //margin: EdgeInsets.only(left: 30),
                                                      child: Text(
                                                        name1[3],
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 120,
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                name[3],
                                                style: TextStyle(
                                                    color: Colors.white),
                                                // textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "PLANS",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Container(
                                // width: 125,
                                height: 115,
                                // margin: EdgeInsets.only(top: 10,left: 2),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => plans()),
                                  ),
                                  child: Card(
                                    color: Colors.black,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 25,
                                                    height: 25,

                                                    //margin: EdgeInsets.only(top: 20,right: 0),
                                                    child: Image.asset(image[9],
                                                        color: Colors.white)),
                                                Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                    child: Text(
                                                  name1[9],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 370,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              name[9],
                                              style: TextStyle(
                                                  color: Colors.white),
                                              // textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "BIRTHDAYS",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 30,
                              child: Container(
                                // width: 125,
                                height: 115,
                                // margin: EdgeInsets.only(top: 10,left: 2),
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => birthday()),
                                  ),
                                  child: Card(
                                    color: Colors.black38,
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                    width: 25,
                                                    height: 25,

                                                    //margin: EdgeInsets.only(top: 20,right: 0),
                                                    child: Image.asset(image[8],
                                                        color: Colors.white)),
                                                Container(

                                                    // alignment: Alignment.center,
                                                    // decoration: BoxDecoration(
                                                    //     borderRadius:
                                                    //     BorderRadius.circular(50),
                                                    //     color: Colors.white),
                                                    // margin: EdgeInsets.only(left: 30),
                                                    child: Text(
                                                  name1[8],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                )),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 400,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Text(
                                              name[8],
                                              style: TextStyle(
                                                  color: Colors.white),
                                              // textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
// List<SalesData> getChartData(){
//   final List<SalesData> chartdata=[
//     SalesData(2015,25),
//     SalesData(2016,14),
//     SalesData(2017,22),
//     SalesData(2018,11),
//     SalesData(2019,8),
//     SalesData(2020,10),
//     SalesData(2021,25),
//     SalesData(2022,14),
//
//     // SalesData("Sept",22),
//     // SalesData("Oct",11),
//     // SalesData("Numb",8),
//     // SalesData("Des",10),
//   ];
//   return chartdata;
// }
}
class MemberReport{
  String x;
  double y;

  MemberReport(this.x, this.y);
}
dynamic getColumnData(){
  List<MemberReport> columnData=<MemberReport>[

    MemberReport("Sun", 20),
    MemberReport("Mon", 12),
    MemberReport("Tue", 40),
    MemberReport("Wed", 15),
    MemberReport("Thu", 25),
    MemberReport("Fri", 9),
    MemberReport("Sat", 17),
  ];
  return columnData;


}

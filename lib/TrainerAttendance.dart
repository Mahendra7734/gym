//import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Present.dart';

class trainerattendance extends StatefulWidget {
  const trainerattendance({Key? key}) : super(key: key);

  @override
  State<trainerattendance> createState() => _trainerattendanceState();
}

class _trainerattendanceState extends State<trainerattendance> {



 // late String title;

  late CalendarController _controller;
  late Map<DateTime, List<dynamic>> _events;
  late List<dynamic> _selectedEvents;
  late TextEditingController _eventController;
 // late SharedPreferences prefs;

  String level ='present';

  String level1 ='absent';

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _eventController = TextEditingController();
    _events = {};
    _selectedEvents = [];
    //prefsData();
  }

  // prefsData() async {
  //  // prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _events = Map<DateTime, List<dynamic>>.from(
  //         decodeMap(json.decode(prefs.getString("events") ?? "{}")));
  //   });
  // }

  // Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
  //   Map<String, dynamic> newMap = {};
  //   map.forEach((key, value) {
  //     newMap[key.toString()] = map[key];
  //   });
  //   return newMap;
  // }
  // Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
  //   Map<DateTime, dynamic> newMap = {};
  //   map.forEach((key, value) {
  //     newMap[DateTime.parse(key)] = map[key];
  //   });
  //   return newMap;
  // }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        //backgroundColor: Colors.black,
        title: Text('Trainer Attendance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              events: _events,
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  canEventMarkersOverflow: true,
                  todayColor: Colors.orange,
                  selectedColor: Theme.of(context).primaryColor,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date, events,holidays) {
                setState(() {
                  _selectedEvents = events;
                });
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),
            // ..._selectedEvents.map((event) => Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: MediaQuery.of(context).size.height/20,
            //     width: MediaQuery.of(context).size.width/2,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30),
            //         color: Colors.white,
            //         border: Border.all(color: Colors.grey)
            //     ),
            //     child: Center(
            //         child: Text(event,
            //           style: TextStyle(color: Colors.blue,
            //               fontWeight: FontWeight.bold,fontSize: 16),)
            //     ),
            //   ),
            // )),
            Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => present()),
                  ),
                  child: Row(
                    children: [
                      Radio(
                          value: "present",
                          groupValue: level,
                          activeColor: Colors.green,

                          onChanged: (value) {
                            setState(() {
                              //level = value.toString();
                            });
                          }),
                      Expanded(child: Container(child: Text("Present =",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)))),
        ..._selectedEvents.map((event) =>Expanded(child: Container(child: Text("15",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)))))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => present()),
                  ),
                  child: Row(
                    children: [
                      Radio(
                          value: "absent",
                          activeColor: Colors.red,
                          groupValue: level1,
                          onChanged: (value) {
                            setState(() {
                              // level = value.toString();
                            });
                          }),
                      Expanded(child: Container(child: Text("Absent =",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),))),
                      Expanded(child: Container(child: Text("2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: _showAddDialog,
      ),
    );
  }

  _showAddDialog() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white70,
          title: Text("Add Events"),
          content: TextField(
            controller: _eventController,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Save",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
              onPressed: () {
                if (_eventController.text.isEmpty) return;
                setState(() {
                  if (_events[_controller.selectedDay] != null) {
                    _events[_controller.selectedDay]
                        ?.add(_eventController.text);
                  } else {
                    _events[_controller.selectedDay] = [
                      _eventController.text
                    ];
                  }
                 // prefs.setString("events", json.encode(encodeMap(_events)));
                  _eventController.clear();
                  Navigator.pop(context);
                });

              },
            )
          ],
        ));
  //
  // return Scaffold(
  //   appBar: AppBar(title: Text("Clendar"),),
  //   body: SafeArea(
  //     child: Container(
  //       child: Calendar(
  //         startOnMonday: true,
  //         selectedColor: Colors.blue,
  //         todayColor: Colors.red,
  //         eventColor: Colors.green,
  //         eventDoneColor: Colors.amber,
  //         bottomBarColor: Colors.deepOrange,
  //         onRangeSelected: (range){
  //           print('selected day ${range.from},${range.to}');
  //         },
  //         onDateSelected: (date){
  //           return handaldate(date);
  //         },
  //         events: events,
  //         isExpanded: true,
  //         dayOfWeekStyle: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w100),
  //
  //         bottomBarTextStyle: TextStyle(color: Colors.white),
  //         hideBottomBar: false,
  //         hideArrows: false,
  //         weekDays: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
  //       ),
  //     ),
  //   ),
  // );
  }
  }


// import 'dart:math' as math;
//
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:gym/TodayBirthday.dart';
// import 'package:gym/UpComingBirthday.dart';
//
// void main() {
//   runApp(demo());
// }
//
// class demo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         body: SafeArea(
//           child: _MyAppSpace(),
//         ),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   ScrollController controller = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       physics: ClampingScrollPhysics(),
//       controller: controller,
//       slivers: [
//         Stack(
//           children: [
//             SliverAppBar(
//               expandedHeight: 220.0,
//               floating: true,
//               pinned: true,
//               snap: true,
//               elevation: 50,
//               backgroundColor: Colors.pink,
//               leading: IconButton(
//                 icon: Icon(Icons.filter_1),
//                 onPressed: () {},
//               ),
//               flexibleSpace: _MyAppSpace(),
//             ),
//             Container(
//               width: double.infinity,
//               child: Image.asset(
//                 'assets/images/running.jpg',
//                 fit: BoxFit.fill,
//               ),
//               // height: MediaQuery.of(context).size.height * 0.3
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 0,left: 20),
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                     text: "Hello, ",
//                     style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
//                     children: [
//                       TextSpan(
//                           text: "a",
//                           recognizer: onTapRecognizer,
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17))
//                     ]),
//               ),
//             ),
//             DefaultTabController(
//               length: 2,
//               // child: Scaffold(
//               //
//               //     body:
//
//               child: Container(
//                 margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 45,
//                       decoration: BoxDecoration(
//                           color: Colors.blue[900],
//                           borderRadius: BorderRadius.circular(20.0)),
//                       child: TabBar(
//                         indicator: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(20.0)),
//                         labelColor: Colors.blue,
//                         unselectedLabelColor: Colors.white,
//                         tabs: const [
//                           Tab(
//                             text: 'Today Birthday',
//                           ),
//                           Tab(
//                             text: 'Up Coming Birthday',
//                           ),
//                         ],
//                       ),
//                     ),
//                     const Expanded(
//                         child: TabBarView(
//                           children: [todaybirthday(), upcomingbirthday()],
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         // SliverList(
//         //   delegate: SliverChildListDelegate(
//         //     List.generate(
//         //       200,
//         //           (index) => Card(
//         //         child: Padding(
//         //           padding: EdgeInsets.all(10),
//         //           child: Text('text $index'),
//         //         ),
//         //       ),
//         //     ),
//         //   ),
//         // )
//       ],
//     );
//   }
// }
//
// class _MyAppSpace extends StatelessWidget {
//   //const _MyAppSpace({Key? key}) : super(key: key);
//   var onTapRecognizer;
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, c) {
//         // final settings = context
//         //     .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
//         // final deltaExtent = settings!.maxExtent - settings.minExtent;
//         // final t =
//         // (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
//         //     .clamp(0.0, 1.0) as double;
//         // final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
//         // const fadeEnd = 1.0;
//         // final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);
//         //
//         // return Opacity(
//         //   opacity: opacity,
//         //   child:
//            return Column(
//             children: [
//               Flexible(
//                 child: Stack(
//                   children: [
//                     // Container(
//                     //   width: double.infinity,
//                     //   child: Image.network(
//                     //     'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
//                     //     fit: BoxFit.cover,
//                     //   ),
//                     // ),
//                     Container(
//                       width: double.infinity,
//                       child: Image.asset(
//                         'assets/images/running.jpg',
//                         fit: BoxFit.fill,
//                       ),
//                       // height: MediaQuery.of(context).size.height * 0.3
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 0,left: 20),
//                       child: RichText(
//                         textAlign: TextAlign.center,
//                         text: TextSpan(
//                             text: "Hello, ",
//                             style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
//                             children: [
//                               TextSpan(
//                                   text: "a",
//                                   recognizer: onTapRecognizer,
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17))
//                             ]),
//                       ),
//                     ),
//                     DefaultTabController(
//                       length: 2,
//                       // child: Scaffold(
//                       //
//                       //     body:
//
//                       child: Container(
//                         margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
//                         child: Column(
//                           children: [
//                             Container(
//                               height: 45,
//                               decoration: BoxDecoration(
//                                   color: Colors.blue[900],
//                                   borderRadius: BorderRadius.circular(20.0)),
//                               child: TabBar(
//                                 indicator: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(20.0)),
//                                 labelColor: Colors.blue,
//                                 unselectedLabelColor: Colors.white,
//                                 tabs: const [
//                                   Tab(
//                                     text: 'Today Birthday',
//                                   ),
//                                   Tab(
//                                     text: 'Up Coming Birthday',
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Expanded(
//                                 child: TabBarView(
//                                   children: [todaybirthday(), upcomingbirthday()],
//                                 ))
//                           ],
//                         ),
//                       ),
//                     ),
//                     // ),
//
//                     // Positioned to take only AppBar size
//                     Positioned(
//                       top: 0.0,
//                       left: 0.0,
//                       right: 10.0,
//                       child:
//                       AppBar(
//                         // Add AppBar here only
//                         backgroundColor: Colors.transparent,
//                         elevation: 0.0,
//                         actions: [
//                           CircleAvatar(
//                             radius: 35.0,
//                             backgroundImage: AssetImage("assets/images/gymmembers.jpg"),
//                             // backgroundColor: Colors.transparent,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // Padding(
//               //   padding: const EdgeInsets.all(8.0),
//               //   child: Text(
//               //     'Title',
//               //     style: TextStyle(
//               //       color: Colors.white,
//               //       fontSize: 26.0,
//               //       fontWeight: FontWeight.bold,
//               //     ),
//               //   ),
//               // ),
//             ],
//           );
//        // );
//
//       },
//     );
//   }
// }
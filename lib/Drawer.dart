import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gym/AddBranch.dart';
import 'package:gym/AddCategory.dart';
import 'package:gym/AddChallange.dart';
import 'package:gym/AddExercise.dart';
import 'package:gym/AddExerciseRoutines.dart';
import 'package:gym/AddHealthStatus.dart';
import 'package:gym/AddMember.dart';
import 'package:gym/AddOffer.dart';
import 'package:gym/AddPayment.dart';
import 'package:gym/AddPlan.dart';
import 'package:gym/AddTrainer.dart';
import 'package:gym/AttendanceReport.dart';
import 'package:gym/DuePaymentReminder.dart';
import 'package:gym/LoginScreen.dart';
import 'package:gym/MemberReport.dart';
import 'package:gym/NeedHelp.dart';
import 'package:gym/OfferList.dart';
import 'package:gym/PaymentList.dart';
import 'package:gym/PaymentReport.dart';
import 'package:gym/Plans.dart';
import 'package:gym/RateUs.dart';
import 'package:gym/ReferEarn.dart';
import 'package:gym/AllMembers.dart';
import 'package:gym/Trainer.dart';
//import 'package:gym/TrainerAttendance.dart';
import 'package:gym/TrainerReport.dart';
import 'package:gym/ViewChallange.dart';
import 'package:gym/ViewOtherBranch.dart';
import 'package:gym/ViewTemplate.dart';
import 'package:gym/ViewHealthStatus.dart';
import 'package:gym/ViewSalary.dart';
import 'package:gym/WinnerChallange.dart';
import 'AddSalary.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ViewExercise.dart';
import 'package:shared_preferences/shared_preferences.dart';


class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  bool _isExpanded = false;

  // bool _hasCallSupport = false;
  // Future<void>? _launched;
  // String _phone = '';
  // Future<void> _makePhoneCall(String phonenumber) async {
  //   final Uri launchUri = Uri(
  //     scheme: 'tel',
  //     path: phonenumber,
  //   );
  //   await launchUrl(launchUri);
  // }
  //
  // Future<void> _launchInBrowser(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw 'Could not launch $url';
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    // final Uri toLaunch =
    // Uri(scheme: 'https://www.facebook.com', host: 'https://www.facebook.com');
    return
     // appBar: AppBar(title: Text(""),),
       Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: [
                Image.asset('assets/images/gym5.jpg'),
                Padding(
                  padding: const EdgeInsets.only(top: 98.0, left: 10),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black54),
                        child: Text(
                          "M",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 105.0, left: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Mahendra Saini (admin)",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125.0, left: 35),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "2001mahendrasaini@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),

            InkWell(

             child: ExpansionTile(
                  onExpansionChanged: (b) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  title: Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        child: Image.asset('assets/images/members(1).png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "MEMBER",
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(_isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down),
                  ),

                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => addmember()),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            margin: EdgeInsets.only(left: 25),
                            child: Image.asset('assets/images/add-user.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Add Member",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => totalmember()),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            margin: EdgeInsets.only(left: 25),
                            child: Image.asset('assets/images/members(1).png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Member List",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]
              ),
            ),

              // child: Divider(
              //   height: 1,
              //   color: Colors.black26,
              // ),

            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/health.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "HEALTS STATUS",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addhealthstatus()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/health.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Health Status",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewhealthstaus()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/health.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Health Status",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),

              // child: Divider(
              //   height: 1,
              //   color: Colors.black26,
              // ),

            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/Trainer.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "TRAINER / STAFF",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addtrainer1()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/add-user(1).png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Trainer",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => trainer()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/member5.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Trainer List",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),

              // child: Divider(
              //   height: 1,
              //   color: Colors.black26,
              // ),

            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/plans.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MANAGE PLAN",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addplan()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Doller.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Plan",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => plans()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/plan.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Plan List",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),

              // child: Divider(
              //   height: 1,
              //   color: Colors.black26,
              // ),

            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/Refer Earn.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "PAYMENTS",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addpayment()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/money1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Payment",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => paymentlist()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Manage Plan.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Payment List",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(

                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/transaction.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Payment Transections",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => duepaymentreminder()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/reminder.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Due Payment Reminder",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),

            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/dollare.webp'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "PAYROLL",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addsalary()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/salary.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Salary",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewsalary()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/money1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Salary",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/new-offer.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "OFFERS",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addoffer()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/offer.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Offer",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => offerlist()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/plan.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Offer List",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/Excersice.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "EXERCISE ROUTION",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addexercise1()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/exercise.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Exercise",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addcategory1()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/exercise.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Category",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Addexerciseroutines()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/barbell.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Exercise Roution",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewexercise()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Excersice.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Exercise",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewtemplat()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Excersice.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Template",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/challenge.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CHALLANGES",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addchallange1()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/exercise.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Challange",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewchallange()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/goal.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Challange",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => winnerchallange()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/trophy.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Winner Challange",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/calendar(1).png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ATTANDANCE",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    // onTap: () => Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => trainerattendance()),
                    // ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Attendance.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Trainer Attandance",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/branch.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "BRANCH",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addbranch()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/branch.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Branch",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => viewotherbranch()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/branch.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "View Other Branches",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/Report.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "REPORT",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => memberreport()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/members.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Member Report",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => trainerreport()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Trainer.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Trainer Report",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => attendancereport()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Attendance.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Attandance Report",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => paymentreport()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/money1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Payment Report",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Container(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/settings.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SETTINGS",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(_isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down),
                ),

                children: [
                  InkWell(
    onTap:() {
                  Share.share('check out my website https://example.com', subject: 'Look what I made!');
    },
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/share.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Share App",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => rateus()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/star.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Rate Us",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => needhelp()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Need Help.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Need Help",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => referearn()),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          margin: EdgeInsets.only(left: 25),
                          child: Image.asset('assets/images/Refer Earn.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Refer Earn",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
            ),
            // InkWell(
            //   onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => generateqrcode()),
            //   ),
            //   child: Container(
            //     margin: EdgeInsets.only(top: 10),
            //     child: Row(
            //       children: [
            //         Container(
            //           width: 20,
            //           height: 20,
            //           margin: EdgeInsets.only(left: 15),
            //           child: Image.asset('assets/images/QR Code.png'),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Text(
            //             "GENERATE QR CODE",
            //             style: TextStyle(fontSize: 15),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            InkWell(
              onTap: ()async{
                // String telephoneUrl = "https://support.google.com/accounts/answer/32047?hl=en&co=GENIE.Platform%3DAndroid";
                // if (await canLaunch(telephoneUrl)) {
                // await launch(telephoneUrl);
                // } else {
                // throw "Error occured trying to call that number.";
                // }
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(left: 15),
                      child: Image.asset('assets/images/Language.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SELECT LANGUAGE",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                String telephoneNumber = '+91 9928517734';
                String telephoneUrl = "tel:$telephoneNumber";
                if (await canLaunch(telephoneUrl)) {
                  await launch(telephoneUrl);
                } else {
                  throw "Error occured trying to call that number.";
                }

               //  _launched=_makePhoneCall(_phone);
               // _launched = _launchInBrowser(toLaunch);
               //  const url = 'https://www.facebook.com';
               //  if(await canLaunch(url)){
               //    await launch(url);
               //  }else {
               //    throw 'Could not launch $url';
               //  }

              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(left: 15),
                      child: Image.asset('assets/images/Contact.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CONTACT US",
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: ()async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('email');
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext ctx) => login()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(left: 15),
                      child: Image.asset('assets/images/Logout.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "LOGOUT",
                        style: TextStyle(fontSize: 15),
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


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym/LoginScreen.dart';
import 'package:gym/RegisterScreen.dart';


class TapTabBar extends StatefulWidget {
  const TapTabBar({Key? key}) : super(key: key);

  @override
  State<TapTabBar> createState() => _TapTabBarState();
}

class _TapTabBarState extends State<TapTabBar> {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _tabController = TabController(length: 3, vsync: this);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(


          appBar: AppBar(

            title: Text('GYM',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20,),),
            actions: [
              IconButton(onPressed: () {},
                  icon: Icon(Icons.security_outlined, size: 35,))
            ],
            bottom: TabBar(tabs: [
              Tab(text: "EXISTING",),

              Tab(text: "NEW"),

            ],
            ),
          ),


          body: TabBarView(
            children: [
              login(),
              register()
            ],
          ),

        ),


      ),


    );
  }

}
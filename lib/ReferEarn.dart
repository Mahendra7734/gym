import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class referearn extends StatefulWidget {
  const referearn({Key? key}) : super(key: key);

  @override
  State<referearn> createState() => _referearnState();
}

class _referearnState extends State<referearn> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Refer Earn"),),
      body: Container(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                child: Image.asset('assets/images/refer.jpg',fit: BoxFit.fill,)),

            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("Invite",style: TextStyle(color: Colors.black,fontSize: 17),)),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(

                    child: InkWell(
                      onTap: ()async{
                        String telephoneUrl = "https://wa.me/9982517734?text=";
                        if (await canLaunch(telephoneUrl)) {
                        await launch(telephoneUrl);
                        } else {
                        throw "Error occured trying to call that number.";
                        }
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            AssetImage('assets/images/whatsapp(1).png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Whatsapp"))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: ()async{
                        String telephoneUrl = "https://www.facebook.com";
                        if (await canLaunch(telephoneUrl)) {
                        await launch(telephoneUrl);
                        } else {
                        throw "Error occured trying to call that number.";
                        }
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            AssetImage('assets/images/ic_facebook.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Facebook"))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: ()async{
                        String telephoneUrl = "https://www.google.com";
                        if (await canLaunch(telephoneUrl)) {
                          await launch(telephoneUrl);
                        } else {
                          throw "Error occured trying to call that number.";
                        }


                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                            AssetImage('assets/images/instagram.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Instagram"))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Share.share('check out my website https://example.com', subject: 'Look what I made!');
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25.0,

                            backgroundImage:
                            AssetImage('assets/images/more(1).png'),
                            backgroundColor: Colors.white70,
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("More"))
                        ],
                      ),
                    ),
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

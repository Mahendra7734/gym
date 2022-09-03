import 'dart:convert';
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:gym/Main%20Activity.dart';
import 'package:gym/RegisterScreen.dart';
import 'package:gym/Send%20Otp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

void main() {
  runApp(MaterialApp(
      //runApp method
      // home: HomePage(),
      )); //MaterialApp
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController branchcodeController = TextEditingController();

   void login(String email, password, type, branchcode) async {
    if (_formKey.currentState!.validate()) {
      try {
        Response response = await post(
            Uri.parse("https://www.premad.in/GYM/Api/signIn"),
            body: {
              'email': email,
              'password': password,
              'type': type,
              'branch_code': branchcode
              // 'address': address
            });

        if (response.statusCode == 200) {
          var responseData = json.decode(response.body);

          var status = responseData["status"];

          print("responseCode" + status.toString());

          if (status == "Success") {
            var data = responseData["data"];
            pageRoute(
                data["id"],
                data["username"],
                data["email"],
                data['password'],
                data["password_show"],
                data["type"],
                data["branch_code"],
                data["status"],
                data["created_at"]);
            print(response.body);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Login Succesfully"),
            ));
            //  print(responseData["message"]);
            print(status);
            print("email" + email);
            print("password" + password);
            print("type" + type);
            print("branch_code" + branchcode);

            //   var message = responseData["message"];

            // print("data"+data[04]["name"]);

          } else {
            //var message = responseData["message"];
            print("Failure");

            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //   content: Text(""+message),
            // ));
            //
            // print("email"+email);
            // print("password"+password);
            // print("type"+type);
            // print("branch_code"+branchcode);
            //  print("address"+address);
            // print("fuler"+message);
          }
        } else {
          var responseData = json.decode(response.body);
          var message = responseData["message"];

          print("email" + email);
          print("password" + password);
          print("type" + type);
          print("branch_code" + branchcode);
          // print("address"+address);
          // print("fuler"+response.body);
        }
      } catch (e) {
        print(e.toString());
        // Fluttertoast.showToast(
        //     msg: ""+e.toString(),
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0
        // );
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? val = pref.getString("email");
    if (val != null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => mainactivity()),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  height: 840,
                  child: Image.asset(
                    'assets/images/abstract1.png',
                    fit: BoxFit.cover,
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 100),
                  child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
              Column(
                children: [
                  Container(
                    // color: Colors.white,
                    margin: EdgeInsets.only(top: 200),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      //child: Card(
                      //margin: EdgeInsets.only(top: 0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 15),
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    hintText: 'Enter Email',
                                    labelText: 'Email',
                                    suffix: Icon(Icons.email),
                                    isDense: false,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(20, 20, 20, 0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Email is Empty";
                                  }
                                  return null;
                                },
                                autofocus: false,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 15),
                              child: TextFormField(
                                obscureText: _isHidden,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  suffix: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(
                                      _isHidden
                                          ?

                                          /// CHeck Show & Hide.
                                          Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                  isDense: true,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  // border: OutlineInputBorder(
                                  //
                                  //     borderRadius: BorderRadius.circular(10)
                                  //
                                  // ),

                                  hintText: "Enter Password",
                                  labelText: "Password",
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Password is Empty";
                                  }
                                  return null;
                                },
                                autofocus: false,
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(
                            //       left: 20, right: 20, top: 15),
                            //   child: TextFormField(
                            //     obscureText: _isHidden,
                            //     controller: typeController,
                            //     decoration: InputDecoration(
                            //       // suffix: InkWell(
                            //       //   onTap: _togglePasswordView,
                            //       //   child: Icon(
                            //       //     _isHidden ?
                            //       //
                            //       //
                            //       //     /// CHeck Show & Hide.
                            //       //     Icons.visibility
                            //       //         : Icons.visibility_off,
                            //       //   ),
                            //       // ),
                            //       isDense: true,
                            //       contentPadding:
                            //           EdgeInsets.fromLTRB(20, 20, 20, 0),
                            //       border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(10)),
                            //       // border: OutlineInputBorder(
                            //       //
                            //       //     borderRadius: BorderRadius.circular(10)
                            //       //
                            //       // ),
                            //
                            //       hintText: "Enter Type",
                            //       labelText: "Type",
                            //     ),
                            //     validator: (value) {
                            //       if (value!.isEmpty) {
                            //         return "Type is Empty";
                            //       }
                            //       return null;
                            //     },
                            //     autofocus: false,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      // ),
                    ),
                  ),
                  Container(
                    // color: Colors.white,
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sendotp()),
                              );
                            }, child: Text("Forgot Password?")),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => register()),
                              );
                            },
                            child: Text("Register Now")),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                //alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 600,right: 10),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.white70, width: 1.5)),
                    color: Colors.blue,
                    onPressed: () {
                      login(
                          emailController.text.toString(),
                          passwordController.text.toString(),
                          typeController.text.toString(),
                          branchcodeController.text.toString());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => mainactivity()),
                      // );
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
              ),
            ],
          ),

      ),
    );
  }

  void pageRoute(String id, user_name, email, password, password_show, type,
      branchcode, status, created_at) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("id", id);
    await pref.setString("username", user_name);
    await pref.setString("email", email);
    await pref.setString("password", password);
    await pref.setString("password_show", password_show);
    await pref.setString("type", type);
    // await pref.setString("branch_code", branchcode);
    await pref.setString("status", status);
    await pref.setString("created_at", created_at);
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => mainactivity()),
        (route) => false);
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:gym/LoginScreen.dart';

class createnewpassword extends StatefulWidget {
  const createnewpassword({Key? key}) : super(key: key);

  @override
  State<createnewpassword> createState() => _createnewpasswordState();
}

class _createnewpasswordState extends State<createnewpassword> {
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
                margin: EdgeInsets.only(bottom: 70),
                child: Text("Create New Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
            // Container(
            //     width: 350,
            //     margin: EdgeInsets.only(top: 70),
            //     child: Text("Confirm your mobile no. and we'll send the instructions",style: TextStyle(fontSize: 16),)),
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Column(
                children: [

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Container(
                      height: 50,
                      // width: 330,
                      child: TextFormField(
                        //controller: _mobcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter new password',
                          prefixIcon: Icon(
                            Icons.send_to_mobile,
                            color: Colors.blueAccent,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Container(
                      height: 50,
                      // width: 330,
                      child: TextFormField(
                        //controller: _mobcontroller,
                        decoration: InputDecoration(
                          hintText: 'Confirm new password',
                          prefixIcon: Icon(
                            Icons.send_to_mobile,
                            color: Colors.blueAccent,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              //alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 500, right: 10),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white70, width: 1.5)),
                  color: Colors.blue,
                  onPressed: () {
                    // login(emailController.text.toString(), passwordController.text.toString(),typeController.text.toString(),branchcodeController.text.toString());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  child: Text(
                    "SAVE",
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
}

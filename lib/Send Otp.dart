import 'package:flutter/material.dart';
import 'package:gym/VerifyOtp.dart';

class sendotp extends StatefulWidget {
  const sendotp({Key? key}) : super(key: key);

  @override
  State<sendotp> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<sendotp> {
  TextEditingController _mobcontroller=TextEditingController();
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
                child: Text("Forgot Your Password ? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
            Container(
              width: 350,
            margin: EdgeInsets.only(top: 70),
                child: Text("Confirm your mobile number and we'll send the instructions",style: TextStyle(fontSize: 16),)),
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
                        controller: _mobcontroller,
                        decoration: InputDecoration(
                          hintText: 'Enter Mobile No.',
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
                      MaterialPageRoute(builder: (context) => verifyotp(Mobilenumber :_mobcontroller.text)),
                    );
                  },
                  child: Text(
                    "SEND OTP",
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

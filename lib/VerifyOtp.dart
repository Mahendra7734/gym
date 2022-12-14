import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class verifyotp extends StatefulWidget {
 // const verifyotp({Key? key}) : super(key: key);
 // String Mobilenumber;

  verifyotp({required this.Mobilenumber});

   String Mobilenumber;

 // verifyotp(this.Mobilenumber);
  @override
  State<verifyotp> createState() => _verifyotpState();
}

class _verifyotpState extends State<verifyotp> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  late StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade50,
      key: scaffoldKey,
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
            // Container(
            //     margin: EdgeInsets.only(bottom: 80),
            //     child: Text("Verification Code",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
            //
            // Container(
            //     width: 300,
            //     margin: EdgeInsets.only(top: 70),
            //     child: Text("Please type the verification code sent to 9982517734",style: TextStyle(fontSize: 16,fontFeatures: [FontFeature.enable('feature')]),textAlign: TextAlign.center,)),
            // Container(
            //   width: 300,
            //   margin: EdgeInsets.only(top: 70),
            //   child: RichText(
            //     textAlign: TextAlign.center,
            //     text: TextSpan(children: [
            //       TextSpan(
            //           text: 'Please type the verification code sent bia SMS to ',
            //           style: TextStyle(color: Colors.black,fontSize: 18)),
            //       WidgetSpan(
            //         child: Transform.translate(
            //           offset: const Offset(0.0, 3.0),
            //           child: Text(
            //             '${widget.Mobilenumber}',
            //             style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            //
            //           ),
            //         ),
            //       ),
            //     ]),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () {},
            //   child:
              Container(
                 //height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 240),
                child: Column(
                  children: <Widget>[
                   // SizedBox(height: 30),
                    // Container(
                    //   height: MediaQuery.of(context).size.height / 3,
                    //   child: FlareActor(
                    //     "assets/otp.flr",
                    //     animation: "otp",
                    //     fit: BoxFit.fitHeight,
                    //     alignment: Alignment.center,
                    //   ),
                    // ),
                    //SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Phone Number Verification',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                      child: RichText(
                        text: TextSpan(
                            text: "Enter the code sent to ",
                            children: [
                              TextSpan(
                                  text: widget.Mobilenumber,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              //
                            ],
                            style: TextStyle(color: Colors.black54, fontSize: 15)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 70),
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              //color: Colors.green.shade900,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 4,
                            obscureText: false,
                            obscuringCharacter: '*',
                            animationType: AnimationType.fade,
                            // validator: (v) {
                            //   if (v!.length < 3) {
                            //     return "I'm from validator";
                            //   } else {
                            //     return null;
                            //   }
                            // },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(10),
                              fieldHeight: 60,
                              fieldWidth: 50,
                             // activeFillColor:
                             // hasError ? Colors.white30 : Colors.white30,
                            ),
                            cursorColor: Colors.black,
                            animationDuration: Duration(milliseconds: 300),
                            textStyle: TextStyle(fontSize: 20, height: 1.6),
                            //backgroundColor: Colors.blue.shade50,
                           // enableActiveFill: true,
                            errorAnimationController: errorController,
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            // boxShadows: [
                            //   BoxShadow(
                            //     offset: Offset(0, 1),
                            //     color: Colors.black12,
                            //     blurRadius: 10,
                            //   )
                            // ],
                            onCompleted: (v) {
                              print(v);
                            },
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        hasError ? "*Please fill up all the cells properly" : "",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "Didn't receive the code? ",
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                          children: [
                            TextSpan(
                                text: " RESEND",
                                recognizer: onTapRecognizer,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                          ]),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin:
                      const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                      child: ButtonTheme(
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            formKey.currentState!.validate();
                            // conditions for validating
                            if (currentText.length != 6 || currentText != "") {
                              errorController.add(ErrorAnimationType
                                  .shake); // Triggering error shake animation
                              setState(() {
                                hasError = true;
                              });
                            } else {
                              setState(() {
                                hasError = false;
                                scaffoldKey.currentState!.showSnackBar(SnackBar(
                                  content: Text(""),
                                  duration: Duration(seconds: 2),
                                ));
                              });
                            }
                          },
                          child: Center(
                              child: Text(
                                "VERIFY".toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            // BoxShadow(
                            //     color: Colors.green.shade200,
                            //     offset: Offset(1, -2),
                            //     blurRadius: 5),
                            // BoxShadow(
                            //     color: Colors.green.shade200,
                            //     offset: Offset(-1, 2),
                            //     blurRadius: 5)
                          ]),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text("Clear"),
                          onPressed: () {
                            textEditingController.clear();
                          },
                        ),
                        FlatButton(
                          child: Text("Set Text"),
                          onPressed: () {
                            textEditingController.text = "123456";
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
          //  ),
          ],
        ),
      ),
    );
  }
}

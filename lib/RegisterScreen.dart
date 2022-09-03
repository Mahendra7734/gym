import 'package:flutter/material.dart';
import 'package:gym/LoginScreen.dart';
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool _isHidden = true;
  TextEditingController fullname = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();


  bool valuefirst = false;
  bool valuesecond = false;

  List<String> text = ["Apply Referral Code"];
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
                child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                              child: Container(
                                height: 45,
                                //width: 330,
                                child: TextFormField(
                                  controller: fullname,
                                  decoration: InputDecoration(
                                    hintText: 'Full Name',
                                    prefixIcon: Icon(Icons.account_box,color: Colors.blueAccent,),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),



                                  ),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                              child: Container(
                                height: 45,
                               // width: 330,
                                child: TextFormField(
                                  controller: mobileno,
                                  decoration: InputDecoration(
                                    hintText: 'Insert Mobile No.',
                                    prefixIcon: Icon(Icons.send_to_mobile,color: Colors.blueAccent,),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),



                                  ),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                              child: Container(
                                height: 45,
                               // width: 330,
                                child: TextFormField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.email,color: Colors.blueAccent,),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),



                                  ),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                              child: Container(
                                height: 45,
                               // width: 330,
                                child: TextFormField(
                                  controller: password,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: Icon(Icons.lock,color: Colors.blueAccent,),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),



                                  ),

                                ),
                              ),
                            ),

                          ],
                        ),
            ),
            Container(
              //alignment: Alignment.bottomRight,

              margin: EdgeInsets.only(top: 600,right: 10),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white70,width: 1.5)),
                  color: Colors.blue,
                  onPressed: () {
                    // login(emailController.text.toString(), passwordController.text.toString(),typeController.text.toString(),branchcodeController.text.toString());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  child: Text("REGISTER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
            ),

              ],
            ),


        ),

    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
width: 450,
                child: FittedBox(
                    child: Image.asset('assets/images/register.png'),
                  fit:BoxFit.fill,
                )
            ),
            Padding(
              padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                        child: Container(
                          height: 45,
                          //width: 330,
                          child: TextFormField(
                            controller: fullname,
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              prefixIcon: Icon(Icons.account_box,color: Colors.blueAccent,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),



                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                        child: Container(
                          height: 45,
                         // width: 330,
                          child: TextFormField(
                            controller: mobileno,
                            decoration: InputDecoration(
                              hintText: 'Insert Mobile No.',
                              prefixIcon: Icon(Icons.send_to_mobile,color: Colors.blueAccent,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),



                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                        child: Container(
                          height: 45,
                         // width: 330,
                          child: TextFormField(
                            controller: email,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email,color: Colors.blueAccent,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),



                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                        child: Container(
                          height: 45,
                         // width: 330,
                          child: TextFormField(
                            controller: password,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock,color: Colors.blueAccent,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),



                            ),

                          ),
                        ),
                      ),


                    ],
                  ),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                    width: double.infinity,
                    // decoration: BoxDecoration(
                    //
                    // ),
                    child: Image.asset('assets/images/login3.png',fit: BoxFit.cover,)),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                   // width: 130,
                    height: 45,
                    margin: EdgeInsets.only(top: 160),
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blueGrey),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.white70,width: 1.5)),
                        color: Colors.amber,
                        onPressed: () {
                         // login(emailController.text.toString(), passwordController.text.toString(),typeController.text.toString(),branchcodeController.text.toString());
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login()),
                          );
                        },
                        child: Text("REGISTER",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

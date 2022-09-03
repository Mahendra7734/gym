import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
class m extends StatefulWidget {
  const m({Key? key}) : super(key: key);

  @override
  State<m> createState() => _mState();
}

class _mState extends State<m> {
 TextEditingController planamount=TextEditingController();
 TextEditingController planvalid=TextEditingController();
 TextEditingController planduration=TextEditingController();
 TextEditingController discount=TextEditingController();
 TextEditingController discountamount=TextEditingController();
 TextEditingController discription=TextEditingController();

  String selectplanvalue="Select Plan";
  var SelectPlan=['Select Plan','Standard Plan','Normal Plan','Basic plan','Platinum Plan'];

 final _formKey = GlobalKey<FormState>();
 void savecustomer(String name, mobile, address,batch_id,plan_id,paid_amount,)async{
   if(_formKey.currentState!.validate()) {
     try{
       Response response = (await post(Uri.parse('https://www.premad.in/GYM/Api/saveCustomer'),
           body: {
             'name': name,
             'mobile': mobile,
             'address': address,
             // 'gender': gender,
             //'dob':dob,
             'batch_id':batch_id,
             'plan_id':plan_id,
             'paid_amount':paid_amount,
             //'due_amount':due_amount,
             //'start_joining':startjoning,
             //'image':image
             // 'address': address
           }
       ));

       if(response.statusCode==200){
         var responsedata= jsonDecode(response.body);
         var status=responsedata["status"];

         print("responseCode" + status.toString());

         if(status=="Success"){
           var data=responsedata["data"];

           print(response.body);
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
             content: Text("Login Succesfully"),
           ));

           print(status);
         }else{
           print("failure");
         }
       }else{
         print("fail");
       }
     } catch (e){
       print(e.toString());
     }
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Plan"),),
      body: SingleChildScrollView(
        child: Form(
         key: _formKey,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Select Plan",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:Container(
                  width: double.infinity,

                  //height:58,width: 320,

                  // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),
                  decoration: BoxDecoration(color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: DropdownButton<String>(
                      isExpanded: true,

                      value: selectplanvalue,
                      onChanged: (String? newValue) =>
                          setState(() => selectplanvalue = newValue!),
                      items: SelectPlan
                          .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                          .toList(),

                      // add extra sugar..
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 42,
                      underline: SizedBox(),
                    ),
                  ),


                ),
              ),

              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Plan Amount",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                     controller: planamount,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Amount",
                        // suffix: Text("available"),suffixStyle:
                        prefixIcon: Icon(Icons.currency_rupee),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // _addresscontroller.clear();
                            });
                          },
                          icon: Icon(Icons.cancel),
                        )),
                  ),
                ),
              ),

              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Plan Valid",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                     controller: planvalid,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Days",
                        // suffix: Text("available"),suffixStyle:
                        //  prefixIcon: Icon(Icons.currency_rupee),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // _addresscontroller.clear();
                            });
                          },
                          icon: Icon(Icons.cancel),
                        )),
                  ),
                ),
              ),

              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Plan Duration",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                     controller: planduration,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Month",
                        // suffix: Text("available"),suffixStyle:
                        // prefixIcon: Icon(Icons.currency_rupee),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // _addresscontroller.clear();
                            });
                          },
                          icon: Icon(Icons.cancel),
                        )),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Discount",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                     controller: discount,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Discount",
                        // suffix: Text("available"),suffixStyle:
                        // prefixIcon: Icon(Icons.currency_rupee),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // _addresscontroller.clear();
                            });
                          },
                          icon: Icon(Icons.cancel),
                        )),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Discount Amount",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                     controller: discountamount,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Amount",
                        // suffix: Text("available"),suffixStyle:
                        prefixIcon: Icon(Icons.currency_rupee),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // _addresscontroller.clear();
                            });
                          },
                          icon: Icon(Icons.cancel),
                        )),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Description",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                     controller: discription,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Description",
                        // suffix: Text("available"),suffixStyle:
                        // prefixIcon: Icon(Icons.currency_rupee),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              // _addresscontroller.clear();
                            });
                          },
                          icon: Icon(Icons.cancel),
                        )),
                  ),
                ),
              ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.white70)),
                  color: Colors.blue,
                  onPressed: () {
                    //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>mainactivity()), (route) => false);
                    // if (_fromkey.currentState!.validate()) {
                    //   _namecontroller.text.toString();
                    // }
                    savecustomer(planamount.text.toString(), planvalid.text.toString(), planduration.text.toString(), discount.text.toString(),discountamount.text.toString(),discription.text.toString());

                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

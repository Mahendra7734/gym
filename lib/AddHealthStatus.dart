import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';
import 'dart:async';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'Model Class/AddHealthStatusResponse.dart';

class addhealthstatus extends StatefulWidget {
  const addhealthstatus({Key? key,this.title = 'My Home Page'}) : super(key: key);
  final String title;
  @override
  State<addhealthstatus> createState() => _addhealthstatusState();
}

class _addhealthstatusState extends State<addhealthstatus> {

  TextEditingController myController2 = TextEditingController();
  TextEditingController height_controller=TextEditingController();
  TextEditingController weight_controller=TextEditingController();
  TextEditingController age_controller=TextEditingController();
  TextEditingController currently_exercise=TextEditingController();
  TextEditingController currently_exercise1=TextEditingController();
  TextEditingController currently_exercise2=TextEditingController();
  TextEditingController privious_exercise=TextEditingController();
  TextEditingController privious_exercise1=TextEditingController();
  TextEditingController privious_exercise2=TextEditingController();
  TextEditingController future_exercise=TextEditingController();
  TextEditingController future_exercise1=TextEditingController();
  TextEditingController future_exercise2=TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   myController2.addListener(_printLatestValue);
  // }
  // _printLatestValue() {
  //   print("text field: ${myController2.text}");
  // }

  // @override
  // void dispose() {
  //   //myController2.dispose();
  //   super.dispose();
  // }

 // mocking a future
  Future<List> fetchSimpleData() async {
    await Future.delayed(Duration(milliseconds: 2000));
    List _list = <dynamic>[];
    // create a list from the text input of three items
    // to mock a list of items from an http call
    _list.add('Mahendra Kumar');
    _list.add('Rahul Sharma');
    _list.add('Pankaj Saini');
    _list.add('Fulsingh Kumar');
    _list.add('Pulkit Sharma');
    _list.add('Bhim Singh Saini');
    _list.add('Kapil Sharma');
    _list.add('Mohan Prajpat');
    _list.add('Vishnu');
    return _list;
  }
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  bool valuefourth = false;
  bool valuefive = false;
  bool valuesix = false;
  bool valueseven = false;
  bool valueeight = false;
  bool valuenine = false;
  bool valueten = false;
  bool valueeleven = false;
  bool valuetwelve = false;
  bool valuethirteen = false;
  bool valuefourteen = false;
  bool valuefifteen = false;
  bool valuesixteen = false;
  bool value17 = false;
  bool value18 = false;
  bool value19 = false;
  bool value20 = false;
  bool value21 = false;
  bool value22 = false;
  bool value23 = false;
  bool value24 = false;
  bool value25 = false;
  bool value26 = false;
  bool value27 = false;
  bool value28 = false;
  bool value29 = false;
  bool value30 = false;
  bool value31 = false;
  bool value32 = false;
  bool value33 = false;
  bool value34 = false;
  bool value35 = false;
  bool value36 = false;
  bool value37 = false;
  bool value38 = false;
  bool value39 = false;
  bool value40 = false;
  bool value41 = false;
  bool value42 = false;
  bool value43 = false;
  bool value44 = false;
  bool value45 = false;
  bool value46 = false;
  bool value47 = false;


 // List<String> text = ["Remember Me", "I'm Member"];

  String dropdounvalue="1";
  var SelectPerDaySmoking=['1','2','3','4','5','6','7','8','9','10','More Then'];

  String dropdounvalue1="1";
  var SelectPerDaySmoking1=['1','2','3','4','5','6','7','8','9','10','More Then'];

  String feetvalue="1";
  var SelectFeet=['1','2','3','4','5','6','7','8','9','10'];

  String inchvalue1="1";
  var SelectInch=['1','2','3','4','5','6','7','8','9','10','11','12'];

  String level = '';
  String level1 = '';

  //Api
  final _fromkey=GlobalKey<FormState>();

  Future<AddHealthStatusResponse>submit(String illness,smoke,ever_smoked,medication,describe,profile,exercising,height,weight,age,gender,dress_size,)async{
    final response=await http.post(Uri.parse('https://www.premad.in/GYM/Api/saveHealthStatus'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String ,String>{
        'family_illnesses' :illness,
        'smoke' :smoke,
        'ever_smoked' :ever_smoked,
        'medication' :medication,
        'describe' :describe,
        'injury_profile' :profile,
        'exercising' :exercising,
        'height' :height,
        'weight' :weight,
        'age' :age,
        'gender' :gender,
        'dress_size':dress_size


      }),

    );
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200){
      //  var responseData = json.decode(response.body);
      var message=data["message"];
      var status=data["status"];


      if(status=='Success'){
        print(status);
        print(message);
        return AddHealthStatusResponse.fromJson(data);
      }else{
        print("failure"+status);
        return AddHealthStatusResponse.fromJson(data);
      }
    }else{
      print("fail");
      return AddHealthStatusResponse.fromJson(data);
    }
  }

  //Api

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Health Status"),),
      body:

         ListView(
          children: [

            Form(
              key: _fromkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 0),
                        child: Text("Member Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),

              Row(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: "Member ID : ",
                          groupValue: level1,
                          onChanged: (value) {
                            setState(() {
                              level1 = value.toString();
                            });
                          }),
                      Text("Member ID")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Name : ",
                          groupValue: level1,
                          onChanged: (value) {
                            setState(() {
                              level1 = value.toString();
                            });
                          }),
                      Text("Name")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Mobile Number : ",
                          groupValue: level1,
                          onChanged: (value) {
                            setState(() {
                              level1 = value.toString();
                            });
                          },

                          ),
                      Text("Mobile Number")
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(level1,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),)),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                     child: TextFieldSearch(
                          label: "Add Details $level1",
                         minStringLength: 0,
                          controller: myController2,
                          future: () {
                            return fetchSimpleData();
                          }),



               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Physical Profile",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: 10),
                        child: Text("Height : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Feet = ")
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Container(
                        width: 80,
                        height: 40,
                        //height:58,width: 320,
                        decoration: BoxDecoration(color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),


                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: DropdownButton<String>(
                            isExpanded: true,

                            value: feetvalue,
                            onChanged: (String? newValue) =>
                                setState(() => feetvalue = newValue!),
                            items: SelectFeet
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
                        margin: EdgeInsets.only(left: 10),
                        child: Text("Inch = ")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Container(
                        width: 75,
                        height: 40,
                        //height:58,width: 320,
                        decoration: BoxDecoration(color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),


                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: DropdownButton<String>(
                            isExpanded: true,

                            value: inchvalue1,
                            onChanged: (String? newValue) =>
                                setState(() => inchvalue1 = newValue!),
                            items: SelectInch
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
                  ],
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                           margin: EdgeInsets.only(left: 10),
                            child: Text("Weight : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Kg = ")
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          child: TextFormField(
                            controller: weight_controller,
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                       margin: EdgeInsets.only(left: 20),
                        child: Text("Age : ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text("Year = ")
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      child: TextFormField(
                        controller: age_controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Gender",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              Row(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: "Beginner",
                          groupValue: level,
                          onChanged: (value) {
                            setState(() {
                              level = value.toString();
                            });
                          }),
                      Text("Male")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "adbanced",
                          groupValue: level,
                          onChanged: (value) {
                            setState(() {
                              level = value.toString();
                            });
                          }),
                      Text("Femal")
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Personal And Family Illness",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),


 Row(
   children: [
     Container(
         width: 200,
         child: Column(
           children: [
               Row(
                 children: [
                   Checkbox(
                       value: valuefirst,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuefirst = val!;
                         });
                       }),
                   Text("Diabetes")
                 ],
               ),
               Row(
                 children: [
                   Checkbox(
                       value: valuesecond,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuesecond = val!;
                         });
                       }),
                   Text("Heart Problem")
                 ],
               ),
               Row(
                 children: [
                   Checkbox(
                       value: valuethirteen,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuethirteen = val!;
                         });
                       }),
                   Text("High Blood Pressure")
                 ],
               ),

               Row(
                 children: [
                   Checkbox(
                       value: valuefourth,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuefourth = val!;
                         });
                       }),
                   Text("Low Blood Pressure")
                 ],
               ),

               Row(
                 children: [
                   Checkbox(
                       value: valuefive,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuefive = val!;
                         });
                       }),
                   Text("Stroke")
                 ],
               ),
               Row(
                 children: [
                   Checkbox(
                       value: valuesix,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuesix = val!;
                         });
                       }),
                   Text("Asthma")
                 ],
               ),

           ],
         ),
     ),
     Container(
         width: 160,
         margin: EdgeInsets.only(bottom: 45),
         child: Column(
           children: [
               Row(
                 children: [
                   Checkbox(
                       value: valueeight,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valueeight = val!;
                         });
                       }),
                   Text("Arthritis")
                 ],
               ),
               Row(
                 children: [
                   Checkbox(
                       value: valuenine,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valuenine = val!;
                         });
                       }),
                   Text("Epilepsy")
                 ],
               ),
               Row(
                 children: [
                   Checkbox(
                       value: valueten,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valueten = val!;
                         });
                       }),
                   Text("Osteoporosis")
                 ],
               ),

               Row(
                 children: [
                   Checkbox(
                       value: valueeleven,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valueeleven = val!;
                         });
                       }),
                   Text("High Cholestrol")
                 ],
               ),

               Row(
                 children: [
                   Checkbox(
                       value: valueseven,
                       // checkColor: Colors.blue,
                       activeColor: Colors.blue,
                       onChanged: (val) {
                         setState(() {
                           valueseven = val!;
                         });
                       }),
                   Text("Chest Pain")
                 ],
               ),
           ],
         ),
     ),

   ],
 ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Smoking",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("Do You Smoke?"),
                    Row(
                      children: [
                        Checkbox(
                            value: valuetwelve,
                            // checkColor: Colors.blue,
                            activeColor: Colors.blue,

                            onChanged: (bool? val) {
                              setState(() {
                                valuetwelve = val!;
                                valuesixteen=false;
                              }

                              );

                            },


                            ),
                        Text("Yes")
                      ],
                    ),


                Row(
                  children: [
                    Checkbox(

                        value: valuesixteen,
                        // checkColor: Colors.blue,
                        activeColor: Colors.blue,
                        onChanged: (val) {
                          setState(() {
                            valuesixteen = val!;
                            valuetwelve=false;
                          });
                        }),
                    Text("No")
                  ],
                ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Per Day : ")),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Container(
                      width: 150,
height: 40,
                      //height:58,width: 320,
                      decoration: BoxDecoration(color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),


                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DropdownButton<String>(
                          isExpanded: true,

                          value: dropdounvalue,
                          onChanged: (String? newValue) =>
                              setState(() => dropdounvalue = newValue!),
                          items: SelectPerDaySmoking
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
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("Have You Ever Smoked?"),
                    Row(
                      children: [
                        Checkbox(
                            value: valuefourteen,
                            // checkColor: Colors.blue,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setState(() {
                                valuefourteen = val!;
                                valuefifteen=false;
                              });
                            }),
                        Text("Yes")
                      ],
                    ),


                    Row(
                      children: [
                        Checkbox(
                            value: valuefifteen,
                            // checkColor: Colors.blue,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setState(() {
                                valuefifteen = val!;
                                valuefourteen=false;
                              });
                            }),
                        Text("No")
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("If you stopped smoking, how long ago did you stop? ",style: TextStyle(fontWeight: FontWeight.bold),)),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Per Day : ")),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Container(
                      width: 150,
                      height: 40,
                      //height:58,width: 320,
                      decoration: BoxDecoration(color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black38,width: 1,style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),


                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DropdownButton<String>(
                          isExpanded: true,

                          value: dropdounvalue1,
                          onChanged: (String? newValue) =>
                              setState(() => dropdounvalue1 = newValue!),
                          items: SelectPerDaySmoking1
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Injury Profile",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),


              Row(
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: value17,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value17 = val!;
                                  });
                                }),
                            Text("Head")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value18,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value18 = val!;
                                  });
                                }),
                            Text("Neck")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value19,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value19 = val!;
                                  });
                                }),
                            Text("Back")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value20,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value20 = val!;
                                  });
                                }),
                            Text("Torso")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value21,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value21 = val!;
                                  });
                                }),
                            Text("Shoulders")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value22,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value22 = val!;
                                  });
                                }),
                            Text("Arms")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value23,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value23 = val!;
                                  });
                                }),
                            Text("Ankles")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(bottom: 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: value24,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value24 = val!;
                                  });
                                }),
                            Text("Hands")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value25,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value25 = val!;
                                  });
                                }),
                            Text("Wrist")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value26,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value26 = val!;
                                  });
                                }),
                            Text("Hips")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value27,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value27 = val!;
                                  });
                                }),
                            Text("Upper Legs")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value29,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value29 = val!;
                                  });
                                }),
                            Text("Knees")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value31,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value31 = val!;
                                  });
                                }),
                            Text("Lower Legs")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value32,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value32 = val!;
                                  });
                                }),
                            Text("Feet")
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Medications",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(

                        width: 200,
                        child: Text("Do you take any pills, tablets, medicine or medication?")),
                    Row(
                      children: [
                        Checkbox(
                            value: value33,
                            // checkColor: Colors.blue,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setState(() {
                                value33 = val!;
                                value34=false;
                              });
                            }),
                        Text("Yes")
                      ],
                    ),


                    Row(
                      children: [
                        Checkbox(
                            value: value34,
                            // checkColor: Colors.blue,
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              setState(() {
                                value34 = val!;
                                value33=false;
                              });
                            }),
                        Text("No")
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("If yes, please describe",style: TextStyle(fontWeight: FontWeight.bold),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Goal",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),

              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Which of the following lifestyle, health and fitness goals are important to you? ",style: TextStyle(fontWeight: FontWeight.bold),)),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: value35,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value35 = val!;
                                  });
                                }),
                            Text("Get Fitter")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value36,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value36 = val!;
                                  });
                                }),
                            Text("Get Stronger")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value37,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value37 = val!;
                                  });
                                }),
                            Text("Build Muscle")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value38,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value38 = val!;
                                  });
                                }),
                            Container(
                                width: 100,
                                child: Text("Lose Body fat I Went To Feel"))
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value39,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value39 = val!;
                                  });
                                }),
                            Text("More Awake")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value40,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value40 = val!;
                                  });
                                }),
                            Text("Healthire")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(bottom: 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: value41,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value42 = val!;
                                  });
                                }),
                            Text("More Relaxed")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value43,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value43 = val!;
                                  });
                                }),
                            Container(
                                width: 100,
                                child: Text("More In Cotrol I Went To Have"))
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value44,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value44 = val!;
                                  });
                                }),
                            Text("More Time")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value45,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value45 = val!;
                                  });
                                }),
                            Text("Less Stress")
                          ],
                        ),

                        Row(
                          children: [
                            Checkbox(
                                value: value46,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value46 = val!;
                                  });
                                }),
                            Text("More Energy")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: value47,
                                // checkColor: Colors.blue,
                                activeColor: Colors.blue,
                                onChanged: (val) {
                                  setState(() {
                                    value47 = val!;
                                  });
                                }),
                            Text("More Fun")
                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Exercise Preference",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("1. If you are currently exercing...",style: TextStyle(fontWeight: FontWeight.bold),)),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("What activitys are you doing?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                 controller: currently_exercise,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("What do you like about them?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: currently_exercise1,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("Is there anything you didn't like about them?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: currently_exercise2,
                  ),
                ),
              ),

              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("2. If you have previously exercised...",style: TextStyle(fontWeight: FontWeight.bold),)),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("What activitys did you do?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                   controller: privious_exercise,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("What did you like about them?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: privious_exercise1,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("Was there anything you didn't like about them?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: privious_exercise2,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("3. For your exercise in the future...",style: TextStyle(fontWeight: FontWeight.bold),)),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("If you have trained with weights before, what exercise did you like?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                controller: future_exercise,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("On average, how long would you like to exercise for?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: future_exercise1,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text("On average , how hard would you like to exercise (on average from 1-10 , 10 being extremely hard)?",style: TextStyle(),)),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: future_exercise2,
                  ),
                ),
              ),

              Container(
                  margin: EdgeInsets.only(left: 10,top: 10),
                  child: Text(" Below the days in the table, write in the time of the day you would like to exercise and the time commitment you are able to make.",style: TextStyle(),)),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Text("Sunday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //     Text("Monday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //     Text("Tuesday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //     Text("Wednesday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //     Text("Thursday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //     Text("Friday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //     Text("Saturday",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              //   ],
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(9.0),
              //   child: Divider(
              //     height: 1,
              //     color: Colors.black,
              //   ),
              // ),


                //margin: EdgeInsets.only(left: 5,top: 10),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Table(
                        defaultColumnWidth: FixedColumnWidth(10.0),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1),
                        children: [
                          TableRow( children: [
                            Column(children:[Text('Sunday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Monday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Tuesday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Wednesday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Thursday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Friday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                            Column(children:[Text('Saturday', style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold))]),
                          ]),
                          TableRow( children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(children:[Text('')]),
                            ),
                            Column(children:[Text("")]),
                            Column(children:[Text('')]),
                            Column(children:[Text('')]),
                            Column(children:[Text('')]),
                            Column(children:[Text('')]),
                            Column(children:[Text('')]),
                          ]),


                        ],
                      ),
                    ),
                  ],
                ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 100,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white70)),
                      color: Colors.blue,
                      onPressed: () {
                        //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>mainactivity()), (route) => false);
                        // if (_fromkey.currentState!.validate()) {
                        //   _namecontroller.text.toString();
                        // }
                       // submit(illness, smoke, ever_smoked, medication, describe, profile, exercising, height, weight, age, gender, dress_size)
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
// class TestItem {
//   final String label;
//   dynamic value;
//
//   TestItem({required this.label, this.value});
//
//   factory TestItem.fromJson(Map<String, dynamic> json) {
//     return TestItem(label: json['label'], value: json['value']);
//   }
//}
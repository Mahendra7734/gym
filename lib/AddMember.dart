import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
//import 'Model Class/Savecustomer.dart';
//import 'Model Class/AddMemberResponse.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';

// import 'AllMembers.dart';
// import 'ViewProfile.dart';



class addmember extends StatefulWidget {
  const addmember({Key? key}) : super(key: key);

  @override
  State<addmember> createState() => _addmemberState();
}

class _addmemberState extends State<addmember> {
   File? pickedImage;

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _mobilecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _planamountcontroller = TextEditingController();
  TextEditingController _paidamountcontroller = TextEditingController();
  TextEditingController _dueamountcontroller = TextEditingController();

//Radio button
  String? _genderRadioBtnVal;
  String batchvalue="Select Batch";
  var Batch=['Select Batch','Batch No.1','Batch No.2','Batch No.3','Batch No.4','Batch No.5'];

  String selectplanvalue="Select Plan";
  var SelectPlan=['Select Plan','Golden Plan','Silver Plan','Diamond plan','Platinum Plan'];
//Radio button

  //Date of birth
  DateTime _currentdate=DateTime.now();
  Future<Null>_datechange(BuildContext context)async{
    final DateTime? _datechange=await showDatePicker(context: context,
        initialDate: _currentdate,
        firstDate: DateTime(2001),
        lastDate: _currentdate);
    if(_datechange!=null){
      setState(() {
        _currentdate=_datechange;
      });
    }
  }

  DateTime _currentdate1=DateTime.now();
  Future<Null>_datechange1(BuildContext context)async{
    final DateTime? _datechange1=await showDatePicker(context: context,
        initialDate: _currentdate1,
        firstDate: DateTime(2001),
        lastDate: _currentdate1);
    if(_datechange1!=null){
      setState(() {
        _currentdate1=_datechange1;
      });
    }
  }
  // Date of birth

  // pick image from gallery
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Choose Options", style: GoogleFonts.roboto(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(140, 252, 191, 3),
        content:
        Container(
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              // ElevatedButton.icon(
              //   onPressed: () {
              //     _opengallery(context);
              //   },
              //   icon: const Icon(Icons.image),
              //   label: const Text("Cover Image Via Gallery"),
              //   style: ElevatedButton.styleFrom(
              //       primary: Colors.black
              //   ),
              // ),
              //
              //
              // ElevatedButton.icon(
              //   onPressed: () {
              //     _opencamera(context);
              //   },
              //   icon: const Icon(Icons.camera),
              //   label: const Text("Cover Image Via Camera"),
              //   style: ElevatedButton.styleFrom(
              //       primary: Colors.black
              //   ),
              // ),
              // ElevatedButton.icon(
              //   onPressed: () {
              //     _openGallery(context);
              //   },
              //   icon: const Icon(Icons.image),
              //   label: const Text("Profile Image Via Gallery"),
              //   style: ElevatedButton.styleFrom(
              //       primary: Colors.black
              //   ),
              // ),
              ElevatedButton.icon(
                onPressed: () {
                  _openCamera(context);
                },
                icon: const Icon(Icons.image),
                label: const Text("Profile Image Via Camera"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
                label: const Text("CANCEL"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  // PickedFile? CoverImage=null;
  // void _opengallery(BuildContext context) async{
  //   final coverImage = await ImagePicker().getImage(
  //     source: ImageSource.gallery ,
  //   );
  //   setState(() {
  //     CoverImage = coverImage!;
  //   });
  //
  //   Navigator.pop(context);
  // }



  // void _opencamera(BuildContext context)  async{
  //   final CoverImage_Via_Camera = await ImagePicker().getImage(
  //     source: ImageSource.camera ,
  //   );
  //   setState(() {
  //     CoverImage = CoverImage_Via_Camera!;
  //   });
  //   Navigator.pop(context);
  // }









  // profile image ke liye code

  PickedFile? ProfileImage=null;


  // void _openGallery(BuildContext context) async{
  //   final ProfileGallery = await ImagePicker().getImage(
  //     source: ImageSource.gallery ,
  //   );
  //   setState(() {
  //     ProfileImage=ProfileGallery!;
  //   });
  //
  //   Navigator.pop(context);
  // }

  void _openCamera(BuildContext context)  async{
    final ProfileCamera = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      ProfileImage = ProfileCamera!;
    });
   // Navigator.pop(context);
  }

// pick image from gallery

  final _formKey = GlobalKey<FormState>();


  void savecustomer(String name, mobile, address,batch_id,plan_id,paid_amount,due_amount,)async{
    //gender,dob,startjoning,image,
    if(_formKey.currentState!.validate()) {
      try{
        Response response = (await post(Uri.parse('https://www.premad.in/GYM/Api/saveCustomer'),
        body: {
          'name': name,
          'mobile': mobile,
          'address': address,
          //'gender': gender,
         // 'dob':dob,
          'batch_id':batch_id,
          'plan_id':plan_id,
          'paid_amount':paid_amount,
          'due_amount':due_amount,
         // 'start_joining':startjoning,
         // 'image':image,
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
            print(name);

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
    String dob=DateFormat.yMMMd().format(_currentdate);
    String _joningdate=DateFormat.yMMMd().format(_currentdate1);
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),
        title: Text("Add Member"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
              key: _formKey,
              child: Container(
                  margin: EdgeInsets.only(top: 30, left: 30),
                  child: Text("Select Image")),
            ),
            const SizedBox(
                //height: 50,
                ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  //
                  //      Container(
                  //       color: Colors.amber,
                  //       height: 250,
                  //       width: double.infinity,
                  //       child: (CoverImage == null) ?
                  //       Image.asset('assets/images/gym.jpg') :
                  //       Image.file(File(CoverImage!.path), fit: BoxFit.fill,),
                  //
                  //       // pickedImage!=null? Image.file(pickedImage!,width: 80,height: 80,)
                  //
                  //
                  // ),


                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.blue),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(100))
                      ),

                      child: ClipOval(
                        child: (ProfileImage == null) ?
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/gym.jpg'),
                          radius: 50,) :
                        Image.file(File(ProfileImage!.path), fit: BoxFit.fill,),

                        // pickedImage!=null? Image.file(pickedImage!,width: 80,height: 80,)
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 110),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 125),
                      child: InkWell(
                        child: Icon(
                          Icons.add_a_photo_outlined, color: Colors.blue,
                          size: 30,),
                        onTap: () {
                         // _showChoiceDialog(context);
                          _openCamera(context);
                          print("camera clicked");
                          // showModalBottomSheet(context: context,
                          // builder: (context) => bottomSheet(context),
                          // );
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Column(
              children: [
               Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Name",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,

                            child: TextFormField(
                              controller: _namecontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // suffix: Text("available"),suffixStyle:
                                  hintText: "Enter Name",
                                  prefixIcon: Icon(Icons.person),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        //_namecontroller.clear();
                                      });
                                    },
                                    icon: Icon(Icons.cancel),
                                  )
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Name Is Empty';

                                }
                                return null;

                              },
                              autofocus: false,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Email",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                              controller: _emailcontroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Email",
                                  prefixIcon: Icon(Icons.email),
                                ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email is Empty";
                                }
                                return null;
                              },
                              autofocus: false,
                            ),
                          ),
                        ),

                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Mobile",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                              controller: _mobilecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: " Enter Mobile",
                                prefixIcon: Icon(Icons.phone_android),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Number is Empty";
                                }
                                return null;
                              },
                              autofocus: false,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Address",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                              controller: _addresscontroller,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: " Enter Address",
                                  // suffix: Text("available"),suffixStyle:
                                  prefixIcon: Icon(Icons.fact_check_outlined),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _addresscontroller.clear();
                                      });
                                    },
                                    icon: Icon(Icons.cancel),
                                  )),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Address is Empty";
                                }
                                return null;
                              },
                              autofocus: false,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Gender")),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                    value: "Beginner",
                                    groupValue: _genderRadioBtnVal,
                                    onChanged: (value) {
                                      setState(() {
                                       // _genderRadioBtnVal = value.toString();
                                        _handleGenderChange;
                                      });
                                    }),
                                Text("Male")
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: "adbanced",
                                    groupValue: _genderRadioBtnVal,
                                    onChanged: (value) {
                                      setState(() {
                                       // _genderRadioBtnVal = value.toString();
                                        _handleGenderChange;
                                      });
                                    }),
                                Text("Femal"),

                              ],
                            )
                          ],
                        ),

                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Date Of Birth",
                              style: TextStyle(color: Colors.blue),
                            )),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                           // width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black45)

                            ),
                            child: Row(

                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text('$dob')),
                                Expanded(

                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(onPressed: (){
                                      _datechange(context);
                                    }, icon: Icon(Icons.date_range)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Batch",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:Container(
                            width: double.infinity,

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

                                value: batchvalue,
                                onChanged: (String? newValue) =>
                                    setState(() => batchvalue = newValue!),
                                items: Batch
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
                              controller: _planamountcontroller,
                                decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Total Fee",
                               prefixIcon: Icon(Icons.currency_rupee),
                            ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Plan Amount is Empty";
                                }
                                return null;
                              },
                              autofocus: false,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Paid Amount",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                              controller: _paidamountcontroller,
                                decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Paid Amount",
                              prefixIcon: Icon(Icons.currency_rupee),
                            ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Paid Amount is Empty";
                                }
                                return null;
                              },
                              autofocus: false,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Due Amount",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            //height: 45,
                            child: TextFormField(
                              controller: _dueamountcontroller,
                                decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Due Amount",
                              prefixIcon: Icon(Icons.currency_rupee),
                                  isDense: true
                            ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Due Amount is Empty";
                                }
                                return null;
                              },
                              autofocus: false,
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Join Date",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black45)

                            ),
                            child: Row(

                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text('$_joningdate')),
                                Expanded(

                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(onPressed: (){
                                      _datechange1(context);
                                    }, icon: Icon(Icons.date_range)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "End Date",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black45)

                            ),
                            child: Row(

                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text('$_joningdate')),
                                Expanded(

                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(onPressed: (){
                                      _datechange1(context);
                                    }, icon: Icon(Icons.date_range)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.white70)),
                            color: Colors.blue,
                            onPressed: () {

                        //     setState(() {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>totalmember(memberid: '05')));
                        //     });
                              //,level.toString(),dob.toString(),_joningdate.toString(),pickedImage.toString()
                              savecustomer(_namecontroller.text.toString(), _emailcontroller.text.toString(), _mobilecontroller.text.toString(), _addresscontroller.text.toString(),_planamountcontroller.text.toString(),_paidamountcontroller.text.toString(),_dueamountcontroller.text.toString());
                              //level.toString(),dob.toString(),Batch.toString(),SelectPlan.toString()

                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),

              ],
            )
          ],
        ),
      ),
    );
  }
  void _handleGenderChange(String value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }
}

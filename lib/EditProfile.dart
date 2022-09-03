import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class editprofile extends StatelessWidget {
  const editprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Pick",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const editprofile1(),
    );
  }
}

class editprofile1 extends StatefulWidget {
  const editprofile1({Key? key}) : super(key: key);

  @override
  State<editprofile1> createState() => _editprofile1State();
}

class _editprofile1State extends State<editprofile1> {

  final _fromkey = GlobalKey<FormState>();

  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _addresscontroller = TextEditingController();
//Radio button
  String level = 'Beginner';
  String dropdounvalue="Select Batch";
  var Batch=['Select Batch','Batch No.1','Batch No.2','Batch No.3','Batch No.4','Batch No.5'];

  String selectplanvalue="Select Plan";
  var SelectPlan=['Select Plan','Golden Plan','Silver Plan','Diamond plan','Platinum Plan'];
//Radio button

  // Date of birth
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
  File? pickedImage;

  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);

      if (photo == null) return;

      final tempImage = File(photo.path);

      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    String _formatdata=DateFormat.yMMMd().format(_currentdate);
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: EdgeInsets.only(top: 30, left: 30),
                child: Text("Select Image")),
            const SizedBox(
                //height: 50,
                ),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 5),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: ClipOval(
                      child:
                          // display Image
                          pickedImage != null
                              ? Image.file(
                                  pickedImage!,
                                  width: 170,
                                  height: 170,
                                )
                              :
                              // display Image
                              Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg',
                                  width: 170,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: IconButton(
                      onPressed: imagePickerOption,
                      icon: const Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Form(
                  child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Member ID",
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     height: 45,

                    child: TextFormField(
                     // controller: _namecontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // suffix: Text("available"),suffixStyle:
                          hintText: "12",
                         // prefixIcon: Icon(Icons.person),
                         //  suffixIcon: IconButton(
                         //    onPressed: () {
                         //      setState(() {
                         //       // _namecontroller.clear();
                         //      });
                         //    },
                         //    icon: Icon(Icons.cancel),
                         //  )
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name Is Empty';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
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
                     height: 45,

                    child: TextFormField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // suffix: Text("available"),suffixStyle:
                          hintText: "Rajendra Kumar",
                         // prefixIcon: Icon(Icons.person),
                         //  suffixIcon: IconButton(
                         //    onPressed: () {
                         //      setState(() {
                         //        _namecontroller.clear();
                         //      });
                         //    },
                         //    icon: Icon(Icons.cancel),
                         //  )
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name Is Empty';
                        }
                        return null;
                      },
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
                     height: 45,
                    child: TextFormField(
                      controller: _addresscontroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Pratap Nagar, Jaipur",
                          // suffix: Text("available"),suffixStyle:
                          // prefixIcon: Icon(Icons.fact_check_outlined),
                          // suffixIcon: IconButton(
                          //   onPressed: () {
                          //     setState(() {
                          //       _addresscontroller.clear();
                          //     });
                          //   },
                          //   icon: Icon(Icons.cancel),
                          // )
                      ),
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
                    )
                  ],
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
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "9952875146",
                       // prefixIcon: Icon(Icons.phone_android),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Date Of Birth",
                      style: TextStyle(color: Colors.blue),
                    )),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     //height: 45,
                //
                //     child: Row(
                //       children: [
                //         Text('Date:$_formatdata'),
                //         Expanded(child: IconButton(
                //           onPressed: (){
                //             _datechange(context);
                //           },icon: Icon(Icons.date_range),
                //         ))
                //       ],
                //     ),
                //     // child: TextFormField(
                //     //     decoration: InputDecoration(
                //     //   border: OutlineInputBorder(),
                //     //   hintText: " DOB",
                //     //   prefixIcon: Icon(Icons.calendar_today),
                //     // )),
                //   ),
                // ),

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
                            child: Text('$_formatdata')),
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
                      "Email",
                      style: TextStyle(color: Colors.blue),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     height: 45,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "amitsaini53@gmail.com",
                          //prefixIcon: Icon(Icons.email),
                        )),
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

                        value: dropdounvalue,
                        onChanged: (String? newValue) =>
                            setState(() => dropdounvalue = newValue!),
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
                     height: 45,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "2000",
                         // prefixIcon: Icon(Icons.currency_rupee),
                        )),
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
                     height: 45,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "1000",
                          //prefixIcon: Icon(Icons.currency_rupee),
                        )),
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
                    height: 45,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "1000",
                          //prefixIcon: Icon(Icons.currency_rupee),
                        )),
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
                            child: Text('$_formatdata')),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}

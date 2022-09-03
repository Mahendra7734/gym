import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class addtrainer1 extends StatelessWidget {
  const addtrainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Pick",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const addtrainer(),
    );
  }
}

class addtrainer extends StatefulWidget {
  const addtrainer({Key? key}) : super(key: key);

  @override
  State<addtrainer> createState() => _addtrainerState();
}

class _addtrainerState extends State<addtrainer> {
  File? pickedImage;
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
  // Date of birth

  // pick image from gallery
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
      appBar: AppBar(leading: Icon(Icons.arrow_back),
        title: Text("Add Trainer"),
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
                      Image.asset(
                        'assets/images/music.jpg',
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
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Branch ID",
                      style: TextStyle(color: Colors.blue),
                    )),
                Form(
                    key: _fromkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // suffix: Text("available"),suffixStyle:
                                  hintText: "2",
                                  suffixIcon: Align(
                                    widthFactor: 1.5,
                                    heightFactor: 1.0,
                                    child: Text("available"),
                                  )),
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Trainer Name",
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
                                        _namecontroller.clear();
                                      });
                                    },
                                    icon: Icon(Icons.cancel),
                                  )),
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
                              "Trainer Address",
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
                                Text("Femal"),

                              ],
                            )
                          ],
                        ),

                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Trainer Fee",
                              style: TextStyle(color: Colors.blue),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: " Enter Fee",
                                prefixIcon: Icon(Icons.phone_android),
                              ),
                              keyboardType: TextInputType.number,
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
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: " Enter Mobile",
                                prefixIcon: Icon(Icons.phone_android),
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
                                    }, icon: Icon(Icons.date_range,color: Colors.blue,)),
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
                            // height: 45,
                            child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Email",
                                  prefixIcon: Icon(Icons.email),
                                )),
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Experience",
                              style: TextStyle(color: Colors.blue),
                            )),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // height: 45,
                            child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Insert experience",
                                  //prefixIcon: Icon(Icons.currency_rupee),
                                )),
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Insert Description",
                                  //prefixIcon: Icon(Icons.currency_rupee),
                                )),
                          ),
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.white70)),
                            color: Colors.blue,
                            onPressed: () {
                              //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>mainactivity()), (route) => false);
                              if (_fromkey.currentState!.validate()) {
                                _namecontroller.text.toString();
                              }
                            },
                            child: Container(
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

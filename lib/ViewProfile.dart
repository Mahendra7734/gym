import 'package:flutter/material''.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';

class viewprofile extends StatelessWidget {
  const viewprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Pick",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const viewprofile1(),
    );
  }
}

class viewprofile1 extends StatefulWidget {
  const viewprofile1({Key? key}) : super(key: key);

  @override
  State<viewprofile1> createState() => _viewprofile1State();
}

class _viewprofile1State extends State<viewprofile1> {

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
    return Scaffold(
      appBar: AppBar(title: Text("View Profile"),),
      body: SingleChildScrollView(
        child: Column(
          children: [



            Stack(
              children: [
                Container(
                  height: 250,
                  color: Colors.blueGrey,
                  child:  Column(
                    children: [
                      // Container(
                      //    margin: EdgeInsets.all(10),
                      //   alignment: Alignment.bottomLeft,
                      //
                      //     child: Text("Select Image",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Stack(
                              children: [

                                Container(
                                  margin: EdgeInsets.only(top: 20,left: 10),
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
                                      width: 150,
                                      height: 150,
                                    )
                                        :
                                    // display Image
                                    Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg',
                                      width: 130,
                                      height: 130,
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
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                width: 200,
                                    child: Text("Name",style: TextStyle(color: Colors.white70),)),
                                Container(
                                    width: 200,
                                    child: Text("Rajendra",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                                Container(
                                    width: 200,
                                    child: Text("Address",style: TextStyle(color: Colors.white70),)),
                                Container(
                                    width: 200,
                                    child: Text("Pratap Nagar , Jaipur",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

                                Container(
                                    width: 200,
                                    child: Text("Contact Num.",style: TextStyle(color: Colors.white70),)),
                                Container(
                                    width: 200,
                                    child: Text("9954668251",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
                Align(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 190),
                          child: Card(
                            elevation: 5,
                            shadowColor: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.bottomLeft,

                                child: Column(

                                  children: [
                                    Container(
                                        width: 250,
                                        child: Text("Member Id",style: TextStyle(fontWeight: FontWeight.bold),)),

                                    Container(
                                        width: 250,
                                        child: Text("5")),


                                    Container(
                                        width: 250,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold),)),

                                    Container(
                                        width: 250,
                                        child: Text("Male")),

                                    Container(
                                        width: 250,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Date Of Birth",style: TextStyle(fontWeight: FontWeight.bold),)),

                                    Container(
                                        width: 250,
                                        child: Text("06/08/2001")),

                                    Container(
                                        width: 250,
                                        margin: EdgeInsets.only(top: 10),
                                        child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold),)),

                                    Container(
                                        width: 250,
                                        child: Text("amitsaini53@gmail.com")),


                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          Container(
                              width: 250,
                              child: Text("Batch",style: TextStyle(fontWeight: FontWeight.bold),)),

                          Container(
                              width: 250,
                              child: Text("Batch No. 2")),

                          Container(
                              width: 250,
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Select Plan",style: TextStyle(fontWeight: FontWeight.bold),)),

                          Container(
                              width: 250,
                              child: Text("Basic")),

                          Container(
                              width: 250,
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Plan Amount",style: TextStyle(fontWeight: FontWeight.bold),)),

                          Container(
                              width: 250,
                              child: Text("1000")),

                          Container(
                              width: 250,
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Paid Amount",style: TextStyle(fontWeight: FontWeight.bold),)),

                          Container(
                              width: 250,
                              child: Text("200")),

                          Container(
                              width: 250,
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Due Amount",style: TextStyle(fontWeight: FontWeight.bold),)),

                          Container(
                              width: 250,
                              child: Text("800")),

                          Container(
                              width: 250,
                              margin: EdgeInsets.only(top: 10),
                              child: Text("Join Date",style: TextStyle(fontWeight: FontWeight.bold),)),

                          Container(
                              width: 250,
                              child: Text("24/06/2022")),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

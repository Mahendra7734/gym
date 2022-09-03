import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';

class addcategory1 extends StatelessWidget {
  const addcategory1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      // title: "Image Pick",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const addcategory(),
    );
  }
}

class addcategory extends StatefulWidget {
  const addcategory({Key? key}) : super(key: key);

  @override
  State<addcategory> createState() => _addcategoryState();
}

class _addcategoryState extends State<addcategory> {


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
      appBar: AppBar(title: Text("Add Category"),),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Title",
                    style: TextStyle(color: Colors.blue),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 45,
                  child: TextFormField(
                    // controller: _addresscontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter title",
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
                    "Select Image",
                    style: TextStyle(color: Colors.blue),
                  )),
              // Container(
              //   height: 200,
              //   width: 400,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(50)),
              //   child: Card(
              //       elevation: 20,
              //       shadowColor: Colors.black,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(20)),
              //       child: pickedImage != null
              //           ? Image.file(
              //               pickedImage!,
              //             )
              //           : Container(
              //               height: 150,
              //               child: ClipRRect(
              //                   borderRadius: BorderRadius.circular(20),
              //                   child: Image.asset(
              //                       'assets/images/gym.jpg',
              //                       fit: BoxFit.fill)),
              //             )
              //   ),
              // ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
                child:
                Stack(

                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,

                      child: Card(
                        // elevation: 10,
                        shadowColor: Colors.red,
                        child: pickedImage != null
                            ? Image.file(
                          pickedImage!,
                        ):
                        Container(

                          // width: 300,
                          // height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/gym.jpg'),
                              fit: BoxFit.fill,
                            ),

                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child:  Positioned(
                          // bottom: 100,
                          // right: 40,
                          child: IconButton(
                            onPressed: imagePickerOption,
                            icon: const Icon(
                              Icons.photo,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

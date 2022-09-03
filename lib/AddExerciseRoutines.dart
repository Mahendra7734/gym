import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';


class AddRoytion extends StatelessWidget {
  const AddRoytion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Addexerciseroutines extends StatefulWidget {
  const Addexerciseroutines({Key? key}) : super(key: key);

  @override
  State<Addexerciseroutines> createState() => _AddexerciseroutinesState();
}

class _AddexerciseroutinesState extends State<Addexerciseroutines> {

  int _currentStep=0;
  StepperType stepperType=StepperType.horizontal;
  // bool valuefirst = false;
  // bool valuesecond = false;
  // bool valuethird = false;
  // bool valuefourth = false;
  // bool valuefive = false;
  // bool valuesix = false;
  // bool valueseven = false;
  // bool valueeight = false;
  // bool valuenine = false;
  // bool valueten = false;
  // bool valueeleven = false;
  // bool valuetwelve = false;
  // bool valuethirteen = false;
  // bool valuefourteen = false;
  // bool valuefifteen = false;
  // bool valuesixteen = false;

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
      appBar: AppBar(title: Text("Add Exercise Roution"),),
      body: Container(


          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Select Days",
                      style: TextStyle(color: Colors.blue),
                    )),
                Expanded(
                  child: Stepper(
                    type: stepperType,
                    physics: ScrollPhysics(),
                    currentStep: _currentStep,
                    onStepTapped: (step) => tapped(step),
                    onStepContinue:  continued,
                    onStepCancel: cancel,
                    steps: <Step>[
                      Step(
                        title: new Text('Sunday'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Add Exercise'),
                            ),

                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0 ?
                        StepState.complete : StepState.disabled,
                      ),
                      Step(
                        title: new Text('Monday'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Add Exercise'),
                            ),

                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1 ?
                        StepState.complete : StepState.disabled,
                      ),
                      Step(
                        title: new Text('Tuesday'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(labelText: 'Add Exercise'),
                            ),
                          ],
                        ),
                        isActive:_currentStep >= 0,
                        state: _currentStep >= 2 ?
                        StepState.complete : StepState.disabled,
                      ),

                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Coustomer Name",
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
                          hintText: " Enter Name",
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
                      "Deteils",
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
                          hintText: " Enter Details",
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
                //         pickedImage!,
                //       )
                //           : Container(
                //         height: 150,
                //         child: ClipRRect(
                //             borderRadius: BorderRadius.circular(20),
                //             child: Image.asset(
                //                 'assets/images/gym.jpg',
                //                 fit: BoxFit.fill)),
                //       )
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
                                image: AssetImage('assets/images/gymchallange2.webp'),
                                fit: BoxFit.fill,
                              ),

                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 170),
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
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 6 ?
    setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }

}

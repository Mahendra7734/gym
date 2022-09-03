import 'package:flutter/material.dart';


class addoffer extends StatefulWidget {
  const addoffer({Key? key}) : super(key: key);

  @override
  State<addoffer> createState() => _addofferState();
}

class _addofferState extends State<addoffer> {

  String? discounttype="Select Discount Type";
  var DiscountType=['Select Discount Type','Fixed','Percentage'];

  String selectoffertype="Select Offer Type";
  var SelectPlan1=['Select Offer Type','Discount','Gift'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Offer"),),
      body: SingleChildScrollView(
        child: Form(

          child: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Offer Type",
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

                      value: selectoffertype,
                      onChanged: (String? newValue) =>
                          setState(() => selectoffertype = newValue!),
                      items: SelectPlan1
                          .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
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
                    "Discount Type",
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

                      value: discounttype,
                      onChanged: (String? newValue) =>
                          setState(() => discounttype = newValue!),
                      items: DiscountType
                          .map<DropdownMenuItem<String>>(
                              (String _value) => DropdownMenuItem<String>(
                            value: _value,
                            child: new Text(_value),
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
                    "Value",
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
                        hintText: " Enter Value",
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
                    "Heading",
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
                        hintText: " Enter Heading",
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
                    // controller: _addresscontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Descriptions",

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

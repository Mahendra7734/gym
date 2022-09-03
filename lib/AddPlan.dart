import 'package:flutter/material.dart';


class addplan extends StatefulWidget {
  const addplan({Key? key}) : super(key: key);

  @override
  State<addplan> createState() => _addplanState();
}

class _addplanState extends State<addplan> {
  String selectplanvalue="Select Plan";
  var SelectPlan=['Select Plan','Standard Plan','Normal Plan','Basic plan','Platinum Plan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Plan"),),
      body: SingleChildScrollView(
        child: Form(

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
                   // controller: _addresscontroller,
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
                    // controller: _addresscontroller,
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
                    // controller: _addresscontroller,
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
                    // controller: _addresscontroller,
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
                    // controller: _addresscontroller,
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
                    // controller: _addresscontroller,
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

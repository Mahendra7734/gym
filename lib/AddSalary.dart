import 'package:flutter/material.dart';


class addsalary extends StatefulWidget {
  const addsalary({Key? key}) : super(key: key);

  @override
  State<addsalary> createState() => _addsalaryState();
}

class _addsalaryState extends State<addsalary> {
  String dropdounvalue="Select Payment Method";
  var Payment=['Select Payment Method','Cash','Debit Card','Online Payment','Cheque'];

  String selectplanvalue="Select Month";
  var SelectPlan=['Select Month','January','February','March','April','May','june','July','August','September','October','November','December'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Salary"),),
      body: SingleChildScrollView(
        child: Form(

          child: Column(
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
                    // controller: _addresscontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: " Enter Name",
                        // suffix: Text("available"),suffixStyle:
                        prefixIcon: Icon(Icons.person),
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
                    "Total Salary",
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
                    "Paid Salary",
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
                      hintText: " Enter Paid Amount",
                      // suffix: Text("available"),suffixStyle:
                      //  prefixIcon: Icon(Icons.currency_rupee),
                      // suffixIcon: IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       // _addresscontroller.clear();
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
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Due Salary",
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
                      hintText: "Enter Due Salary",
                      // suffix: Text("available"),suffixStyle:
                      prefixIcon: Icon(Icons.currency_rupee),
                      // suffixIcon: IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       // _addresscontroller.clear();
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
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Month",
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
                    "Payment Method",
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
                      items: Payment
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

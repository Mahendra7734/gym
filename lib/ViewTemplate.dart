import 'package:flutter/material.dart';
import 'package:gym/Monday.dart';

class viewtemplat extends StatefulWidget {
  const viewtemplat({Key? key}) : super(key: key);

  @override
  State<viewtemplat> createState() => _viewexerciseState();
}

class _viewexerciseState extends State<viewtemplat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Exercise"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => monday()),
                ),
                child: Card(
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("MONDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("40-60 Minutes Running/Jocking Arms, Back And Chest",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("TUESDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("Core And Glutes Stretching And yoga",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  color: Colors.lightGreen,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("WEDNESDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("Intervel Running/ Hills Arms, Chest And Back",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  color: Colors.pink,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("THURSDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("Core And Glutes 20 Minutes Running Stretch",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  color: Colors.blueGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("FRIDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("40-60 Minutes Of Running Stretch",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("SATURDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("Full Body Hiil",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: InkWell(
                onTap: (){

                },
                child: Card(
                  color: Colors.indigoAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("SUNDAY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic),),
                        Container(
                            width: 250,
                            child: Text("Rest Day",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

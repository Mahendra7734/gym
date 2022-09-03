import 'package:flutter/material.dart';

class needhelp extends StatefulWidget {
  const needhelp({Key? key}) : super(key: key);

  @override
  State<needhelp> createState() => _needhelpState();
}

class _needhelpState extends State<needhelp> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help"),),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Welcome ! How Can We Help?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            Card(
              child: ExpansionTile(
                onExpansionChanged: (b) {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                title: Row(
                  children: [
                    Text("How do create an account")
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Icon(_isExpanded
                      ? Icons.arrow_drop_down
                      : Icons.arrow_drop_up,size: 40,),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("You can simply create a new account by following any of this to steps:-"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("1. Click on register feel your basic details and again click on register button to register in the app"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2. You can directly register using your google account"),
                  )
                ],
              )
            ),

            Card(
                child: ExpansionTile(
                  onExpansionChanged: (b) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  title: Row(
                    children: [
                      Text("How can i add member?")
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Icon(_isExpanded
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up,size: 40,),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Once you have created plan member can be added different ways:-"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("1. Directly click on add member icon on top of the pay home page. insert member details and the submit details to add member to your gym"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("2. Another way to add member is by clicking add member icon on top right corner of manage member page"),
                    )
                  ],
                )
            ),

            Card(
                child: ExpansionTile(
                  onExpansionChanged: (b) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  title: Row(
                    children: [
                      Text("How can i manage trainers of my gym?")
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Icon(_isExpanded
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up,size: 40,),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Trainers of the gym can be added in manage trainer/staff opction in side menu. click on add trainer icon on top right corner of manage trainer page fill details add submit."),
                    ),

                  ],
                )
            ),

            Card(
                child: ExpansionTile(
                  onExpansionChanged: (b) {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  title: Row(
                    children: [
                      Text("How can i assign exercise to member?")
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Icon(_isExpanded
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up,size: 40,),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("To assign the exercise to member make sure date you have added exercise plan. for this follow these steps :-"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("1. Click on assign exercise option from side menu."),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("2. Click add icon on top right corner of page."),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("3. Select member and exercise plan and submit."),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

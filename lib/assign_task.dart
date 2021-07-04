import 'package:flutter/material.dart';


class Assign_task extends StatefulWidget {
  @override
  AssignTaskState createState() => AssignTaskState();
}

class AssignTaskState extends State<Assign_task> {

  List<String> selectedItemValue = new List<String>();
  var status = 'pending';
  List<String> tasks;
  @override
  Widget build(BuildContext context) {

    tasks=['Wash dishes','Cook breakfast','Clean room','Fill Water'];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurpleAccent,
        title: Row(
          children: <Widget>[
            Image.asset(
              "assets/homacationlogo.png",
              height: 40,
              width: 40,
            ),
            Text(" Homacation"),
          ],
        ),
      ),
      body: new ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (context, i) {
          for (int i = 0; i < 20; i++) {
            selectedItemValue.add('None');
          }
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
              side: BorderSide(color: Colors.purple, width: 0.5),
            ),
            shadowColor: Colors.grey,
            elevation: 5,

            child:Container(

                decoration:
                BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.deepPurple, Colors.white]),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: <Widget>[

                      Align(
                        alignment: Alignment.centerLeft,

                        child: Container(
                          child: Text(
                            tasks[i],
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.tealAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      DropdownButton(

                        hint: Text(
                          'Choose family member',
                          style: TextStyle(
                              color: Colors.blueGrey
                          ),

                        ),
                        itemHeight: 50.0,

                        items: _dropDownItem(),
                        onChanged: (value) {
                          selectedItemValue[i]=value;
                          setState(() {
                          });
                        },
                        value: selectedItemValue[i],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,

                        child: Container(
                          child: Text(
                            'status : '+status,
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ),

                    ],
                  ),

                )

            ),

          );
        },
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropDownItem() {

    List<String> fam = ['None','Natasha','Dane','Roger'];  // Dummy data
    return fam
        .map((value) => DropdownMenuItem(
      value: value,
      child: Text(value),
    ))
        .toList();
  }
}

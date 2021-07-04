import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FamTodoist extends StatefulWidget {
  FamTodoist({Key key, this.title}) : super(key: key);
  final String title;

  @override
  FamTodoistState createState() => FamTodoistState();
}

class FamTodoistState extends State<FamTodoist> {
  List<bool> selectedTasks = new List<bool>();
  List<String> tasks;
  String todoText;



  @override
  void initState() {

    setState(() {
      tasks=['Wash dishes','Cook breakfast','Clean room','Fill Water'];

      for(int i=0;i<tasks.length;i++){
        selectedTasks.add(false);
      }
    });
  }

  void itemChange(bool isChecked,int i){
    setState(() {
      selectedTasks[i] = isChecked;

    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
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
        body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(


                children: <Widget>[

                  Text(
                    'To-do List',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.indigo,

                    ),

                  ),



                  new ListView.builder(
                    padding: EdgeInsets.only(top:10),
                    shrinkWrap: true,
                    itemCount: selectedTasks.length,
                    itemBuilder: (BuildContext context, int i){
                      return  Column(
                        children: <Widget>[

                          new CheckboxListTile(
                              value: selectedTasks[i],
                              title: _strikeThrough(todoText: tasks[i], checked: selectedTasks[i]),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged:(bool val){
                                itemChange(val, i);
                                setState(() {
                                  if(val)
                                    selectedTasks[i] = true;
                                  else
                                    selectedTasks[i]=false;
                                });
                              }
                          )
                        ],
                      );
                    },
                  ),
                ]
            )
        ));
  }
}

class _strikeThrough extends StatelessWidget{

  bool checked;
  String todoText;
  _strikeThrough({this.checked, this.todoText}) : super();

  Widget _strikewidget(){
    if(!checked){
      return Text(
        todoText,
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.teal[600],

        ),
      );
    }
    else{
      return Text(
        todoText,
        style: TextStyle(
            fontSize: 22.0,
            decoration: TextDecoration.lineThrough,
            color: Colors.blueGrey,
            fontStyle: FontStyle.italic
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return _strikewidget();
  }
}
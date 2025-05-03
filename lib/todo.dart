import 'package:carthage_store/todo-card.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class Task {
  String title;
  bool status;
  Task({
    required this.title,
    required this.status,
  });
}

List allTask  = [
  Task(title: "publish video" , status: false),
  Task(title: "Laugh louder" , status: true),
  Task(title: "gym" , status: false),
];

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
        title: Text("TO DO APP" , style: TextStyle(
          fontSize: 33,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
       body: Container(
         width: double.infinity,
        child: Column(
         children: [
           Todocard(),
           Todocard()
         ],
        ),
              ),
    );
  }
}
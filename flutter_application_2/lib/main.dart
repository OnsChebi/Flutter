import 'package:flutter/material.dart';

void  main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ToDoWidget(),
    );
  }
}
class ToDoWidget extends StatefulWidget {
  const ToDoWidget({super.key});

  @override
  State<StatefulWidget> createState() => ToDo();
}

class ToDo extends State<ToDoWidget> {
  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: const Icon(Icons.favorite),//to put the icon on the right of the navbar (menu)
          // title: const Text("My NoteBook",
          //style: TextStyle(color:Color.fromARGB(255, 255, 255, 255)),),
          // backgroundColor: const Color.fromARGB(255, 99, 126, 185),
          // actions: [
          //   const Padding(
          //     padding:const  EdgeInsets.all(1.0),
          //     child: Icon(Icons.favorite),)
          // ],

          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("My NoteBook",
              style: TextStyle(color: Color.fromARGB(255,255, 255, 255)),),
              Icon(Icons.favorite, color: Color.fromARGB(255,255,255,255),)

            ],
            ),
            backgroundColor: Color.fromARGB(255,99, 126, 185),
        ),
        body: Padding(padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration:const InputDecoration(
                labelText: "what's your plan for today",
                border: OutlineInputBorder()
              ),
            )
          ],
        ),),
    );
  }
}
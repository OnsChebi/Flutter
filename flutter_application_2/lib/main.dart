import 'package:flutter/material.dart';

void  main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
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

          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("My NoteBook",
              style: TextStyle(color: Color.fromARGB(255,255, 255, 255)),),
              const Icon(Icons.favorite, color: Color.fromARGB(255,255,255,255),)

            ],
            ),
            backgroundColor: Color.fromARGB(255,99, 126, 185),
            
        ),
        body: const Center (
          child:Column(

          )),
      )

    );
  }
}
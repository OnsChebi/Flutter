import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ons\'s Application',
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
  final List<String> taskList = [];

  void addtask() {
    setState(() {
      if (taskController.text.isNotEmpty) {
        taskList.add(taskController.text);
        print(taskList); // For debugging
        taskController.clear(); // Clear the text field
      }
    });
  }
  void deletetask(index){
    setState(() {
      taskList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "My NoteBook",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Icon(Icons.favorite, color: Color.fromARGB(255, 255, 255, 255)),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 99, 126, 185),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: "What's your plan for today?",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10), // Add some spacing
            Expanded(
              child: ListView.builder(
                itemCount: taskList.length, // Make sure this matches the taskList
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(taskList[index]),
                    onLongPress:()=> deletetask(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addtask, // Call addtask when pressed
        backgroundColor: const Color.fromARGB(255, 99, 126, 185),
        child: const Icon(Icons.add, color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}

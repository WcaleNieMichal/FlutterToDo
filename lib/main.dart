import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO App',
      debugShowCheckedModeBanner: false,
    home: TodoScreen()
    );
  }
}
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});  // ← to konstruktor z 'const'

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Moje TODO")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: "Wpisz zadanie"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                print(_controller.text);
                _controller.clear();
              },
              child: Text("Dodaj"),
            ),
          ],
        ),
      ),
    );
  }
}



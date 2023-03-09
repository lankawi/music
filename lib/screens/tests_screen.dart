import 'package:flutter/material.dart';
import 'package:forte/services/nav_bar.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),                     //выплывающая менюшка
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('Тесты'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Уровень сложности: легкий',style: TextStyle(color: Colors.green[200]),),
          ElevatedButton(onPressed: () {
            Navigator.pushReplacementNamed(context, '/testeas');
          }, child: Text('Легкий'))
        ],
      ),
    );
  }
}
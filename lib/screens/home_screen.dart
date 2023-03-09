import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;  //подключение к текущему пользователю

    return Scaffold(
      backgroundColor: Colors.yellow[200],
      resizeToAvoidBottomInset: false,    //клавиатура не будет сдвигать экран
      appBar: AppBar(
        title: const Text('Главная страница'),
        actions: [
          IconButton(
            onPressed: () {
              if ((user == null)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),    //не авторизованному пользователю отображается Вход
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountScreen()),  //авторизованному пользователю отображается Профиль
                );
              }
            },
            icon: Icon(
              Icons.person,
              color: (user == null) ? Colors.cyanAccent[400] : Colors.cyanAccent[100],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: (user == null)
              ? ForNoAuth()             //Контент для НЕ зарегистрированных в системе
              : ForAuth(),              //Контент для ЗАРЕГИСТРИРОВАННЫХ в системе
        ),
      ),
    );
  }
}

class ForNoAuth extends StatelessWidget {
  const ForNoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Text('Теория'),
        ),
      ),
    );
  }
}

class ForAuth extends StatefulWidget {
  const ForAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //'Solfeggio'
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
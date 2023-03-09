import 'package:flutter/material.dart';
import 'package:forte/myapp_icons.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(                                //гамбургер-меню
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Myapp.home, size: 28, color:Colors.amber),
            title: Text('Главная страница', style: TextStyle(fontSize: 23),),
            onTap: () => print('Home'),
          ),
          Divider(),                             // черта -----------
          ListTile(
            leading: Icon(Myapp.note_beamed, size: 28, color:Colors.amber),
            title: Text('Сольфеджио', style: TextStyle(fontSize: 23),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Myapp.book_open, size: 28, color:Colors.amber),
            title: Text('Музыкальная литература', style: TextStyle(fontSize: 23),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Myapp.jigsaw_piece, size: 28, color:Colors.amber),
            title: Text('Тесты', style: TextStyle(fontSize: 23),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Myapp.library_music, size: 28, color:Colors.amber),
            title: Text('Клавиши', style: TextStyle(fontSize: 23),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Myapp.music, size: 28, color:Colors.amber),
            title: Text('Пьесы', style: TextStyle(fontSize: 23),),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout, size: 28, color:Colors.amber),
            title: Text('Выйти', style: TextStyle(fontSize: 23),),
            onTap: () => print('Logout'),
          )
        ],
      ),
    );
  }
}
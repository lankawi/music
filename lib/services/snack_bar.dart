import 'package:flutter/material.dart';

class SnackBarService {
  static Color errorColor = Colors.red.shade300;  //уведомления об ошибке - красные
  static Color okColor = Colors.green.shade300;  //нормальные уведомления - зеленые

  static Future<void> showSnackBar(     //статичный метод: показать снэкбар
      BuildContext context, String message, bool error) async {    //принимает: контекст, само сообщение и ошибку как булево значение; если error=true, то красное уведомление
    ScaffoldMessenger.of(context).removeCurrentSnackBar();    //удаление предыдущего снэкбара, чтобы не накладывались друг на друга

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: error ? errorColor : okColor,    //шаблон виджета: сообщение и цвет
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
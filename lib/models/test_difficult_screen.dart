import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
    Question(
        title: '',
        answers: [
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
          {'answer' : '',},
        ]
    ),
  ];

  List<Question> get questions => [..._data];
}
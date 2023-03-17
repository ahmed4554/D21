import 'dart:developer';

class Animals {
  late String activity;
  late List<String> names;
  late List<String> pictures;
  late List<String> sounds;
  List<AlpaQuestion> questions = [];

  Animals.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    names = json['names'];
    pictures = json['pictures'];
    sounds = json['sounds'];
    for (var i in json['questions']) {
      questions.add(AlpaQuestion.fromJson(i));
    }
  }
}

class AlpaQuestion {
  late String text;
  late String answer;
  late List<String> options;

  AlpaQuestion.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    answer = json['answer'];
    options = json['options'];
  }
}

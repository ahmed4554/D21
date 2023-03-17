class NumbersModel {
  late String activity;
  late List<String> names;
  late List<String> pictures;
  late List<String> sounds;
  List<NumberQuestion> numberQuestions = [];
  NumbersModel.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    names = json['names'];
    pictures = json['pictures'];
    sounds = json['sounds'];
    json['questions'].forEach((e) {
      numberQuestions.add(NumberQuestion.fromJson(e));
    });
  }
}

class NumberQuestion {
  late String text;
  late String pic = '';
  late String answer, kind;
  late List<String> options;

  NumberQuestion.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    pic = json['pic'];
    answer = json['answer'];
    options = json['options'];
    kind = json['kind'];
  }
}

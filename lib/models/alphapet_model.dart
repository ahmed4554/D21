class AlphapetModel {
  late String activity;
  late List<String> chars;
  late List<String> words;
  late List<String> picOfChar;
  late List<String> shapesOfChar;
  late List<String> voices;

  AlphapetModel.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    chars = json['alpha'];
    words = json['words'];
    picOfChar = json['pictures'];
    shapesOfChar = json['shape'];
    voices = json['Voice'];
  }
}

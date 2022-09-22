class QuestionModel {
  int? id;

  String? question;

  List? answers;

  dynamic rightAnswer;

  QuestionModel({this.id, this.question, this.answers, this.rightAnswer});
}

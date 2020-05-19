

class QuizQuestion {
  String questions;
  List<Answer> answers;

  QuizQuestion({
    this.questions,
    this.answers,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) => QuizQuestion(
    questions: json["Questions"],
    answers: List<Answer>.from(json["Answers"].map((x) => Answer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Questions": questions,
    "Answers": List<dynamic>.from(answers.map((x) => x.toJson())),
  };
}

class Answer {
  String answers;
  bool isTrue;

  Answer({
    this.answers,
    this.isTrue,
  });

  factory Answer.fromJson(Map<String, dynamic> json) => Answer(
    answers: json["Answers"],
    isTrue: json["isTrue"],
  );

  Map<String, dynamic> toJson() => {
    "Answers": answers,
    "isTrue": isTrue,
  };
}

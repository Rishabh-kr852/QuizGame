class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "Flutter is an ____ mobile application development framework created by Google",
    [
      Answer("Shareware", false),
      Answer("IOS", false),
      Answer("Open-Source", true),
      Answer("None of the above", false),
    ],
  ));

  list.add(Question(
    "Which of the following best explains the flutter?",
    [
      Answer("This is an open-source UI toolkit", true),
      Answer("It is an open-source database management system", false),
      Answer("This is an open-source backend toolkit", false),
      Answer("None of the above", false),
    ],
  ));

  list.add(Question(
    "Flutter apps are written in the ____ language and make use of many of the language’s more advanced features.",
    [
      Answer("Kotlin", false),
      Answer("Java", false),
      Answer("Swift", false),
      Answer("Dart", true),
    ],
  ));

  list.add(Question(
    "Flutter user dart as a language?",
    [
      Answer("True", true),
      Answer("False", false),
    ],
  ));

  list.add(Question(
    "Flutter is used to develop applications for ____ and ____.",
    [
      Answer("Android", false),
      Answer("iOS", false),
      Answer("Both", true),
      Answer("None", false),
    ],
  ));

  list.add(Question(
    "Which Company Developed Flutter?",
    [
      Answer("Microsoft", false),
      Answer("Google", false),
      Answer("Facebook", false),
      Answer("IBM", true),
    ],
  ));

  list.add(Question(
    "Which function is responsible for starting the program?",
    [
      Answer("main()", true),
      Answer("runApp()", false),
      Answer("run", false),
      Answer("flutter", false),
    ],
  ));

  list.add(Question(
    "Which of the following are used to develop the native hybrid app from a single codebase?",
    [
      Answer("Flutter", false),
      Answer("React-Native", false),
      Answer("None", false),
      Answer("Both", true),
    ],
  ));

  return list;
}

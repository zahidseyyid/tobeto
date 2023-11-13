// QuestionModel sınıfı içinde
class QuestionModel {
  final String questionText;
  final Map<String, bool> answers;

  QuestionModel({required this.questionText, required this.answers});

  // Doğru cevabı almak için bir getter eklenebilir
  String get correctAnswer {
    return answers.entries.firstWhere((element) => element.value, orElse: () => const MapEntry("", false)).key;
  }
}

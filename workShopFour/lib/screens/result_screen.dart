// ignore_for_file: library_private_types_in_public_api

import 'package:cheavbella_quiz/models/question_model.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  final Map<int, String> userAnswers;
  final List<QuestionModel> questions;

  const ResultScreen(this.score, this.userAnswers, this.questions, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String get resultMessage {
    if (widget.score == 100) return "Zirvedesin!";
    if (widget.score < 60 && widget.score > 30) return "İyi İş!";
    if (widget.score < 30) return "Denemeye Devam!";
    return "Tebrikler!";
  }

  int get correctAnswersCount {
    int correct = 0;
    widget.userAnswers.forEach((index, answer) {
      if (widget.questions[index].correctAnswer == answer) {
        correct++;
      }
    });
    return correct;
  }

  int get incorrectAnswersCount {
    return widget.questions.length - correctAnswersCount;
  }

 void _showAnswers() {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(10.0),
          itemCount: widget.questions.length,
          separatorBuilder: (context, index) => const Divider(color: Colors.grey),
          itemBuilder: (context, index) {
            final question = widget.questions[index];
            final userAnswer = widget.userAnswers[index] ?? "Cevap verilmedi";
            final correctAnswer = question.correctAnswer;
            final isCorrect = userAnswer == correctAnswer;

            return ListTile(
              contentPadding: const EdgeInsets.all(8.0),
              title: Text(
                question.questionText,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Sizin Cevabınız: $userAnswer\nDoğru Cevap: $correctAnswer",
                style: TextStyle(color: Colors.grey[600]),
              ),
              trailing: isCorrect ? const Icon(Icons.check, color: Colors.green) : null, // Doğru cevaplara yeşil tik ekler
            );
          },
        ),
      );
    },
  );
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 157, 207),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              resultMessage,
              style: const TextStyle(
                color: Color.fromARGB(255, 31, 30, 30),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50.0),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Doğru Cevaplar: $correctAnswersCount",
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Yanlış Cevaplar: $incorrectAnswersCount",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
            ),
            const SizedBox(height: 60.0),
          // "Cevaplarını Gör" butonu
          MaterialButton(
            onPressed: _showAnswers,
            color: Colors.white,
            minWidth: 200.0,
            height: 60.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const Text(
              "Cevaplarını Gör",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            const SizedBox(height: 10.0),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen()),
                );
              },
              color: Colors.orange,
              minWidth: 200.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Text(
                "Tekrar Dene",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

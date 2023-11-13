import 'package:cheavbella_quiz/screens/result_screen.dart';
import 'package:flutter/material.dart';
import '../data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

// _State
class _QuizState extends State<QuizScreen> {
  final PageController _controller = PageController(initialPage: 0);
  bool isPressed = false;

  Map<int, int> selectedAnswers = {};
  Color selectAnswer = Colors.grey;
  Color trueAnswer = Colors.green;
  Color wrongAnswer = Colors.red;
  Color buttonControl = Colors.white;
  int score = 0;
  Map<int, String> userAnswers = {};

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 157, 207),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
              buttonControl = Colors.white;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Soru ${index + 1} / ${questions.length}",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 8.0,
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  questions[index].questionText,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                for (int i = 0; i < questions[index].answers.length; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: MaterialButton(
                      color: selectedAnswers[index] == i
                          ? selectAnswer
                          : buttonControl,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      minWidth: 200.0,
                      height: 50.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      onPressed: () {
                        setState(() {
                          selectedAnswers[index] = i;
                          userAnswers[index] =
                              questions[index].answers.keys.toList()[i];
                        });
                        if (questions[index].answers.values.toList()[i]) {
                          score += 10;
                        }
                      },
                      child: Text(
                        questions[index].answers.keys.toList()[i],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: selectedAnswers.containsKey(index)
                          ? () {
                              if (index + 1 == questions.length) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ResultScreen(
                                        score, userAnswers, questions),
                                  ),
                                );
                              } else {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.linear);
                                setState(() {
                                  isPressed = false;
                                });
                              }
                            }
                          : null,
                      style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side:
                            const BorderSide(color: Colors.orange, width: 4.0),
                      ),
                      child: Text(
                        index + 1 == questions.length
                            ? "Sonucu Gör"
                            : "Sonraki Soru",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

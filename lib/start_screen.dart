import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(115, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Learn Flutter',
              style: TextStyle(color: Colors.white, fontSize: 24)),
          const SizedBox(
            height: 20,
          ),
          // FilledButton(
          //   onPressed: () {},
          //   style: const ButtonStyle(
          //       backgroundColor: WidgetStatePropertyAll<Color>(
          //           Color.fromARGB(255, 255, 0, 242))),
          //   child: const Text(
          //     "Start Quiz",
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            label: const Text(
              "learn flutter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

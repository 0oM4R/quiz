import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({required this.item, super.key});
  final Map<String, Object> item;
  @override
  Widget build(BuildContext context) {
    final isCorrect = item['user_answer'] == item['correct_answer'];
    final index = (item['question_index'] as int) + 1;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(index: index, isCorrectAnswer: isCorrect),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item["question"] as String,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 2),
              Text(
                item["user_answer"] as String,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: isCorrect ? Colors.green : Colors.red,
                ),
              ),
              if (!isCorrect)
                Text(
                  item["correct_answer"] as String,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}

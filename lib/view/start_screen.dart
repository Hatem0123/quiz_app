import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_pr1/components/components.dart';
import 'package:quiz_pr1/view/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.pending_actions, size: 100),
          const SizedBox(height: 50),
          Text("Ready For Testing Your Skills ? ",textAlign:TextAlign.center,style:GoogleFonts.alfaSlabOne(color: Colors.black),),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {

              try {
                Navigationito(context,QuestionsScreen());
              } on RangeError catch (e) {
                print(e);
              }

              },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
            icon: const Icon(Icons.timer, color: Colors.black),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}

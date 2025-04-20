import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_pr1/components/components.dart';
import 'package:quiz_pr1/constans.dart';
import 'package:quiz_pr1/models/quiz_model.dart';
import 'package:quiz_pr1/view/results_screen.dart';

class QuestionsScreen extends StatefulWidget {
   QuestionsScreen({super.key,this.answer});

 void Function(String? answer)? answer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {

final List<String?>? selected_anser=[];
var questions_index = 0 ;

void answerQuestion(){
  setState(() {
    questions_index++;
  });


    if(selected_anser!.length == 6) {
      try {
        Navigationito(context, ResultsScreen(chosenAnsers: selected_anser,));
      }on RangeError catch (e) {
        print(e);
      }
    }



  print(selected_anser);

}

void Chosed_answer(String answer){
selected_anser?.add(answer);
}
  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions[questions_index];
    return Scaffold(
      backgroundColor: Colors.white,

      body:SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.cyan,
                  Colors.cyanAccent,
                  Colors.black12,

                ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('${currentQuestion.text}',style: GoogleFonts.lato(
                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30
                ),textAlign: TextAlign.center,),
                SizedBox(height: 30,),      ///iam exuting this fun on every list item
                ///used the spread operator
                ///.map returns an Iterable but no a real list
                // ...current_question.answers!.map((item){
                //   return Custome_button(txt: item,onPress: (){});
                // }),
                ...currentQuestion.get_shuffled_ansers().map((item){
                  return Custome_button(txt: item,onPress:(){
                    Chosed_answer(item);
                    answerQuestion();

                  });
                }),
              ],

            ),
          ),
        ),
      ),
    );
  }
}

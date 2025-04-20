import 'package:flutter/material.dart';
import 'package:quiz_pr1/components/components.dart';
import 'package:quiz_pr1/constans.dart';

class ResultsScreen extends StatelessWidget {
   ResultsScreen({super.key, required this.chosenAnsers});

   List? chosenAnsers=[];


   List get_summery(){
     final summary = [];

     try {
       for(var i = 0;i<chosenAnsers!.length;i++){
                 summary.add({
                   // questions[i]:chosenAnsers![i]
                   'Question':i,
                    'Q':questions[i].text,
                      'correct answer':questions[i].answers![0],
                       'your_answer' : chosenAnsers![i]

                 });
              }

       return summary;
     } on RangeError catch (e) {
       print(e);
     }
     throw Exception();
   }
  @override
  Widget build(BuildContext context) {

    List<dynamic> ss= get_summery();
    var correct_ansers=ss.where((data) {
      return  data['your_answer'] == data['correct answer'];
    },).length;
    return Scaffold(
      body: SizedBox(
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(height: 40,),
                  Text("you answerd $correct_ansers out of 6 questions correctly ")   ,
                  SizedBox(height: 40,),
                  Question_summry(ss),
                  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

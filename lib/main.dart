import 'package:flutter/material.dart';
import 'package:quiz_pr1/view/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: Scaffold(

        body: Container(

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
            child: const StartScreen()),
      )
    );
  }
}




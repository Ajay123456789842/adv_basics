
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/quiz_state.dart';


class StartScreen extends StatelessWidget {
   StartScreen({ this.quizstate,super.key});

void Function()? quizstate;



  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/quiz-logo.png',
            height: 250,
            color: Color.fromARGB(255, 184, 167, 207),
            ),
            const SizedBox(height: 30,),
           const Text('Welcome to the quiz on Flutter',
           style:  TextStyle(
            fontSize: 16,
          color: Color.fromARGB(209, 255, 255, 255)

          )
           ),
           
           const SizedBox(height: 30,),
           ElevatedButton.icon(
            onPressed: (){
              quizstate!();
            },
            icon: const Icon(Icons.arrow_right_alt), 
            label: const Text('Start Quiz'),
            ),

            const SizedBox(height: 20,),

          ]
          ),
      ),

    );
  }
}
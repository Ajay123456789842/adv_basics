


import 'dart:math';

import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/answer_button.dart';


class QuestionScreen extends StatefulWidget {
    QuestionScreen({this.onselecetdans,super.key});
   void Function(String ans)? onselecetdans;

 
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

var  questionindex=0;

var questionindx=1;




void questionchange(String ans){
widget.onselecetdans!(ans);
  

  setState(() {
    questionindex=questionindex+1;
    questionindx=questionindx+1;
    
   
  });
}
  
    

  @override
  Widget build(BuildContext context) {
    final currentquestion=questions[questionindex];
    return  
       Scaffold(
        backgroundColor: Color.fromARGB(255, 178, 33, 204),
         body: Container(
          margin:const EdgeInsets.all(40),
          child:  Center(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('$questionindx ). ',
                  style: const TextStyle(
                  fontSize: 18,
                 color: Color.fromARGB(237, 247, 250, 247),
                 fontWeight: FontWeight.bold,
                 
                ),), 
                  Expanded(
                    child: Text(
                                  currentquestion.question.toString(),
                                  style: const TextStyle(
                    fontSize: 18,
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                   
                         
                                  ),
                                
                         
                                ),
                  ),
                ],
              ),
              
              
               const SizedBox(height: 20,),
           
                ...currentquestion.shuffledanswers().map((item) {
                  return AnswerButton(
                    text: item,
                    bgcolor:  const Color.fromARGB(255, 108, 51, 206),
                    onpressed: (){
                      questionchange(item);
                    },
                  );
                  
                } ),
                
              
           
            ],
           
          ),
          ),
            ),
       );
    
  }
  }
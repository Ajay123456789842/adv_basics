 import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
 import 'package:adv_basics/start_screen.dart';
 import 'package:adv_basics/data/questions.dart';
 import 'package:adv_basics/results_screen.dart';
 

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}





class _QuizState extends State<Quiz> {

  List<String> selectedans=[];

  var activescreen='start-screen';

  @override
  void initState() {
    activescreen='start-screen';
    super.initState();
  }

void switchscreen(){
  setState(() {
    activescreen='questions-screen';
  });
}

void chooseans(String ans){
  selectedans.add(ans);
 
  if(selectedans.length==questions.length){
    setState(() {
       activescreen='result-screen';
    });
   
  }
}


  @override
  Widget build(BuildContext context) {
   Widget screenwidget= StartScreen(quizstate: switchscreen);

    if(activescreen=='questions-screen'){
      screenwidget= QuestionScreen(onselecetdans:chooseans);

    }
     if(activescreen=='result-screen'){
      screenwidget = Results(onselecetdAns:selectedans);
      //screenwidget = FinalResult(onselecetdAns: selectedans);

    }


    return 
     MaterialApp(
      home: Scaffold(backgroundColor: Colors.purple,
      body: Container(
        child: screenwidget,
      ),
      ),
      );
  
  }
}


import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/quiz_state.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:math';
import 'package:adv_basics/sqlconn.dart';




class Results extends StatefulWidget {
   Results({this.onselecetdAns,super.key});

  

   List<String>? onselecetdAns;

  @override
  State<Results> createState() => _ResultstState();
}

class _ResultstState extends State<Results> {
  

  List<String> correctans=[];
   

  int score=0;
  int totalquestions=questions.length;
  double? percentage;
  String? status;
  Color? c;
  Color? bg;

  int qustionslen=questions.length;

 void compareu(){
  setState(() {
    int i;
  for(i=0;i<questions.length;i++){
    correctans.add(questions[i].answers[0]);
    if(questions[i].answers[0]==widget.onselecetdAns![i]){
      score=score+1;

    }
   

  }
  if(score<=6){
    status='FAIL';
    c=Color.fromARGB(255, 247, 4, 4);
    
  }
  else{
    status='PASS';
    c=const Color.fromARGB(255, 1, 252, 10);
   
  }
  
    percentage=((score/totalquestions)*100).round() as double;
   
    
  });
  

 }

 @override
  void initState() {
    compareu();
    super.initState();
  }

 
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      backgroundColor: Colors.black12,
      body:  Container(
        child: Center(child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             const Text('User picked Answers are:',
             
              style: TextStyle(fontSize: 20,
              textBaseline: TextBaseline.alphabetic
           ),),
             const SizedBox(height: 20,),
              ...widget.onselecetdAns!.map((e) {
                return Text(e,
                style:const TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                 color: Colors.white

                ),);
              }),

SizedBox(height: 20,),
              const Text('Correct  Answers are:',
             
              style: TextStyle(fontSize: 20,
              textBaseline: TextBaseline.alphabetic
              ),),
             const SizedBox(height: 20,),
              ...correctans.map((e) {
                return Text(e,
                style:const TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white

                ),);
              }),
              
              SizedBox(height: 20,),
              Text('You Have scored $score out of $qustionslen questions',
               style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),
              ),

                SizedBox(height: 40,),

                Text('Score : $score',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),),

                 SizedBox(height: 40,),

               CircularPercentIndicator(
                  radius: 80,
                  lineWidth: 5.0,
                  percent: 1,
                  center:  Text('$percentage%',
                  style: const TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,)
                  ),
                  progressColor: const Color.fromARGB(255, 12, 216, 19),
                ),
               SizedBox(height: 20,),
                Text('$status',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: c,
                ),),

                const SizedBox(height: 10,),


                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return const Quiz();
                  }
                  ));
              

              },
                child:const Text('Retry Quiz') ,),
                
               
            ],
        
          ),
        )) ,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';



class AnswerButton extends StatelessWidget {
   AnswerButton( {this.text, this.onpressed, this.bgcolor, super.key});

final String? text;
final void Function()? onpressed; 
Color? bgcolor;

var currqus=questions[0];

void colorchange(){
  if(currqus.answers[0]=='Widgets'){
    bgcolor=Color.fromARGB(255, 3, 253, 15);
  }
  else{
    bgcolor=const Color.fromARGB(255, 247, 19, 3);

  }
  
}
  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((_) => colorchange);
    return
    Column(children: [
      SizedBox(height: 10,),
       ElevatedButton(onPressed: onpressed,
    style:ElevatedButton.styleFrom(
      backgroundColor:bgcolor,
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60)
      )
      
    ),
     child: Text(text.toString())
    ),
    ],
    );
    
   
  }
}
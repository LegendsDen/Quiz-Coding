import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizcoding/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'body.dart';
 class QuizScreen extends StatelessWidget{
   @override
   Widget build(BuildContext context){
     QuestionController _controller=Get.put(QuestionController());
     return Scaffold(
       extendBodyBehindAppBar: true,
       appBar: AppBar(

         backgroundColor: Colors.transparent,
         elevation: 0,
         actions: [
           OutlinedButton(onPressed: _controller.nextQuestion,
            child: Text("Skip",
            style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold,

           ),



         ),

             style: ButtonStyle(
               shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),



             ),


         )],

       ),
       body:Body(),
     );

   }
 }




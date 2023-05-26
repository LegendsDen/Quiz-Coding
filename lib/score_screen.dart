import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizcoding/constants.dart';
import 'package:quizcoding/question_controller.dart';
import 'package:quizcoding/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget{
  @override
Widget build(BuildContext context){
    QuestionController _qnController=Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          WebsafeSvg.asset("assets/bg.svg",fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text("Score",
                style: Theme.of(context)
                .textTheme
                    .displaySmall
                .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10 }/${_qnController.questions.length*10}",
                style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                    .copyWith(color: kSecondaryColor),


                ),
              Spacer(flex: 3,),
              Container(
                color: Colors.green,

              )

            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.to (WelcomeScreen()),
        child: Text("Home"),
      ),




    );
  }
}
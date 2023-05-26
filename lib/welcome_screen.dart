import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizcoding/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quizcoding/constants.dart';
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset("assets/bg.svg",fit: BoxFit.fill),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1),
                Text(
                  "Lets Play The Quiz",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                    Text("Enter your name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                Spacer(),
                TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF1C2341),
                    hintText: "Full Name",

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      )
                    )



                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: ()=> Get.to(QuizScreen()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding*0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text("Lets Start",
                      style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        .copyWith(color: Colors.black),

                    ),

                  ),
                ),
                Spacer(flex: 2,),


                  ],
                ),
          ),

            ),
          ],

      ),
    );
  }
}
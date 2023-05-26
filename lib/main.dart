import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quizcoding/quiz_screen.dart';
import 'package:quizcoding/score_screen.dart';
import'package:quizcoding/welcome_screen.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return GetMaterialApp(
      title: 'Trivia App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
    );
  }
}
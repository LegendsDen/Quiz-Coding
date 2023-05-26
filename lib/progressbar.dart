import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizcoding/constants.dart';
import 'package:quizcoding/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';
class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        color: Colors.white,
        border:Border.all(color: Color(0XFF3F4768),width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),

        builder: (controller ) {
          print(controller.animation.value);
          return Stack(
            children: [
              LayoutBuilder(
                  builder:(context,constraints)=>Container(
                    width: constraints.maxWidth*controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )


              ),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animation.value*10).round()} sec"),
                        WebsafeSvg.asset("assets/clock.svg"),
                      ],
                    ),
                  )


              )
            ],
          );
        },
      ),

    );
  }
}


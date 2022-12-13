import 'package:flutter/material.dart';
import 'dart:ui';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/models_on_boarding.dart';

class OnBordingPageWidget extends StatelessWidget {
  const OnBordingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding : const EdgeInsets.all(tDefaultsize),
      color: model.bgColor ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.Image),
            height : size.height * 0.45,
          ),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headline3),
              Text(model.subTitle, textAlign: TextAlign.center,),
            ],
          ),
          Text(model.countertext, style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: 80.0,)
        ],
      ),
    );
  }
}
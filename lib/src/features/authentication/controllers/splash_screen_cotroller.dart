import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/on_boarding/on_boarding_screen.dart';


class SplashScreenCotroller extends GetxController{
  static SplashScreenCotroller get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {

    await Future.delayed(Duration(milliseconds:500));
    animate.value = true ;
    await Future.delayed(Duration(milliseconds:5000));
    Get.to(OnBoardingScreen());

    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen() ));
  }
}
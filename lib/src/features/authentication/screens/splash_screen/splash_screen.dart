import 'package:flutter/material.dart';
import 'package:calma1/src/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../main.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/splash_screen_cotroller.dart';
import '../on_boarding/on_boarding_screen.dart';
import '../welcome/welcomePage.dart';


class SplashScreen extends StatelessWidget {
SplashScreen({super.key});


final splashScreenCotroller = Get.put(SplashScreenCotroller());
  @override
  Widget build(BuildContext context) {
    splashScreenCotroller.startAnimation();
 return Scaffold(
     backgroundColor: Colors.white,
     body : Stack(
       children: [
         Obx(() => AnimatedPositioned(
               duration: const Duration(milliseconds: 1600),
             bottom: splashScreenCotroller.animate.value ? 0 : -30,
             right: splashScreenCotroller.animate.value? 0 : -30,
           child: Image(
             image:AssetImage(tSplashDownIcon)),
       ),),
         Obx(() =>  AnimatedPositioned(
        duration: const Duration(milliseconds: 1600),
           top :20,
      left: splashScreenCotroller.animate.value ? tDefaultsize : -80 ,
      child: AnimatedOpacity(
      duration: const Duration(milliseconds: 1600),
      opacity: splashScreenCotroller.animate.value ? 1 : 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            TAppName,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          TAppTagine,
          style: Theme.of(context).textTheme.headline4,
        ),

      ],
      ),
      ),
      ),),
         Positioned.fill(
           bottom :40,
           child: Image(
             image:AssetImage(tSplashImage),
           ),
         ),
         Obx(() =>  AnimatedPositioned(
             bottom :splashScreenCotroller.animate.value ? 60: 0,
             right:tDefaultsize,
             duration: const Duration(milliseconds: 2400),

             child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: splashScreenCotroller.animate.value ? 1 : 0,

             child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(100),
               color:tprimaryColor,
             ),
             ),
           ),
           ),),
       ],
 ),
 );
 }

}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/models_on_boarding.dart';
import '../screens/on_boarding/On_Bording_Page_Widget.dart';


class OnBordingController extends GetxController{


  final controller = LiquidController();
  RxInt currentPage =0.obs;

  final pages = [
    OnBordingPageWidget(
      model: OnBoardingModel(
        Image: tOnBoardingImage1,
        title: tOnBoardingTitle1 ,
        subTitle: tOnBoardingSupTitle1,
        countertext: tOnBoardingCounter1,
       // height: size.height,
        bgColor :  tOnBoardingPage1Color,

      ),
    ) ,
    OnBordingPageWidget(
      model: OnBoardingModel(
        Image: tOnBoardingImage2,
        title: tOnBoardingTitle2 ,
        subTitle: tOnBoardingSupTitle2,
        countertext: tOnBoardingCounter2,
       // heihte: size.height,
        bgColor :  tOnBoardingPage2Color,

      ),
    ) ,
    OnBordingPageWidget(
      model: OnBoardingModel(
        Image: tOnBoardingImage3,
        title: tOnBoardingTitle3 ,
        subTitle: tOnBoardingSupTitle3,
        countertext: tOnBoardingCounter3,
        //heihte: size.height,
        bgColor :  tOnBoardingPage3Color,

      ),
    ) ,
  ];

     skip( ) =>  controller.jumpToPage(page: 2);
     animateToNextSlide(){
     int nextPage = controller.currentPage + 1 ;
  controller.animateToPage(page: nextPage);
     }
  onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;
}
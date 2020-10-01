import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:notes/components/onboarding.dart';
import 'package:notes/constants/color_constants.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/onboarding_item.dart';

void main() {
  // Set the status bar color to primary color throughout app. //
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:
        ColorConstants.primaryColor, //or set color with: Color(0xFF0000FF)
  ));
  runApp(Notes());
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<OnBoardingItem> onBoardingItems = [
      new OnBoardingItem(
        description:
            'App for organization of your\n        academic study material',
        icon: ImageConstants.kNotesLogo,
        color: ColorConstants.onBoardingIconDark,
        buttonColor: ColorConstants.blueLight,
      ),
      new OnBoardingItem(
        color: ColorConstants.accentColor,
        description:
            'Upload assignments, experiments\n            and any other document',
        icon: ImageConstants.kAudit,
        buttonColor: ColorConstants.blueDark,
      ),
      new OnBoardingItem(
        description: 'Notice Board',
        icon: ImageConstants.kPushNotification,
        color: ColorConstants.onBoardingIconDark,
        buttonColor: ColorConstants.blueLight,
      ),
      new OnBoardingItem(
        color: ColorConstants.accentColor,
        description: 'Call for Vote',
        icon: ImageConstants.kVote,
        buttonColor: ColorConstants.blueDark,
      ),
    ];
    OnBoardingItem currentItem = onBoardingItems[0];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData(
        primaryColor: ColorConstants.primaryColor,
        accentColor: ColorConstants.accentColor,
        fontFamily: 'Manrope',
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Swiper(
        itemBuilder: (context, index) {
          return OnBoarding(
            item: currentItem,
          );
        },
        onIndexChanged: (index) {
          currentItem = onBoardingItems[index];
        },
        itemCount: 4,
        indicatorLayout: PageIndicatorLayout.SCALE,
        pagination: SwiperCustomPagination(
          builder: (BuildContext context, SwiperPluginConfig config) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 92.0),
              child: new Align(
                alignment: Alignment.bottomCenter,
                child: new DotSwiperPaginationBuilder(
                  color: ColorConstants.gray,
                  activeColor: ColorConstants.blueLight,
                  size: 10.0,
                  space: 10.0,
                ).build(context, config),
              ),
            );
          },
        ),
      ),
    );
  }
}

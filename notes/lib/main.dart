import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:notes/components/onboarding.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/onboarding_item.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF67349C), //or set color with: Color(0xFF0000FF)
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
        color: Color(0xFF003961),
        buttonColor: Color(0xFF2196F3),
      ),
      new OnBoardingItem(
        color: Color(0xFFDE6FA1),
        description:
            'Upload assignments, experiments\n            and any other document',
        icon: ImageConstants.kAudit,
        buttonColor: Color(0xFF1565C0),
      ),
      new OnBoardingItem(
        description: 'Notice Board',
        icon: ImageConstants.kPushNotification,
        color: Color(0xFF003961),
        buttonColor: Color(0xFF2196F3),
      ),
      new OnBoardingItem(
        color: Color(0xFFDE6FA1),
        description: 'Call for Vote',
        icon: ImageConstants.kVote,
        buttonColor: Color(0xFF1565C0),
      ),
    ];
    OnBoardingItem currentItem = onBoardingItems[0];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      theme: ThemeData(
        primaryColor: Color(0xFF67349C),
        accentColor: Color(0xFFDE6FA1),
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
                  color: Color(0XFFC9C7C7),
                  activeColor: Color(0XFF2196F3),
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

import 'package:flutter/material.dart';
import 'package:notes/components/bottom_navigation.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/onboarding_item.dart';

class OnBoarding extends StatelessWidget {
  final OnBoardingItem item;

  OnBoarding({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 375.0,
                      width: double.infinity,
                      color: Theme.of(context).primaryColor,
                    ),
                    Positioned(
                      top: 49.0,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Notes',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            item.description,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Manrope',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 250.0,
                      child: CircleAvatar(
                        radius: 80.0,
                        backgroundColor: item.color,
                      ),
                    ),
                    Positioned(
                        top: 285.0,
                        child: Image.asset(
                          item.getIcon,
                          width: 96.0,
                          height: 96.0,
                        ))
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 327.0,
                        height: 55.0,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          color: item.buttonColor,
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context) => BottomNavigation()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                ImageConstants.kGoogleLogo,
                                width: 30.0,
                                height: 30.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

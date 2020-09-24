import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/constants/image_constants.dart';

class ContributorCard extends StatelessWidget {
  const ContributorCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          shadowColor: Color(0xFF000042),
          elevation: 6.0,
          //color: Colors.lightBlue,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstants.kAvatar,
                      height: 50.0,
                      width: 52.0,
                    ),
                    SizedBox(
                      width: 33.0,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              'John Doe',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 17.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [Contribution()],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Flexible(
                            child: Text(
                              'College was the worst and the best thing',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF009688),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                ImageConstants.kGithub,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                ImageConstants.kTwitter,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                ImageConstants.kYoutube,
                                height: 24,
                                width: 24,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                ImageConstants.kSpotify,
                                height: 24,
                                width: 24,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Contribution extends StatelessWidget {
  const Contribution({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF009688),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Text(
          'Developer',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/contributor.dart';
import 'package:notes/model/social_media.dart';
import 'package:url_launcher/url_launcher.dart';

class ContributorCard extends StatelessWidget {
  final Contributor contributor;

  const ContributorCard({this.contributor});

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
                              contributor.name,
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
                              children: createRoles(contributor.roles)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Flexible(
                            child: Text(
                              contributor.message,
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
                            children: createSocial(contributor.socialMedia),
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

  List<Widget> createSocial(SocialMedia socialMedia) {
    List<Widget> social = [];
    if (socialMedia.github != '') {
      social.add(
        GestureDetector(
          child: Image.asset(
            ImageConstants.kGithub,
            height: 24,
            width: 24,
          ),
          onTap: () {
            launchURL(socialMedia.github);
          },
        ),
      );
      social.add(SizedBox(
        width: 10,
      ));
    }
    if (socialMedia.twitter != '') {
      social.add(
        GestureDetector(
          child: Image.asset(
            ImageConstants.kTwitter,
            height: 24,
            width: 24,
          ),
          onTap: () {
            launchURL(socialMedia.twitter);
          },
        ),
      );
      social.add(SizedBox(
        width: 10,
      ));
    }
    if (socialMedia.youtube != '') {
      social.add(
        GestureDetector(
          child: Image.asset(
            ImageConstants.kYoutube,
            height: 24,
            width: 24,
          ),
          onTap: () {
            launchURL(socialMedia.youtube);
          },
        ),
      );
      social.add(SizedBox(
        width: 10,
      ));
    }
    if (socialMedia.spotify != '') {
      social.add(
        GestureDetector(
          child: Image.asset(
            ImageConstants.kSpotify,
            height: 24,
            width: 24,
          ),
          onTap: () {
            launchURL(socialMedia.spotify);
          },
        ),
      );
    }
    return social;
  }

  void launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<Widget> createRoles(List<String> roles) {
    List<Widget> rolesWidgets = [];
    for (var role in roles) {
      rolesWidgets.add(Contribution(role: role));
    }
    return rolesWidgets;
  }
}

class Contribution extends StatelessWidget {
  final String role;
  const Contribution({
    @required this.role,
  });

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
          role,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

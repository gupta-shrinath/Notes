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
          child: ListTile(
            leading: Image.asset(
              ImageConstants.kAvatar,
              height: 50.0,
              width: 52.0,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 17.0,
                ),
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF009688),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Developer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'College was the worst and the best thing',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF009688),
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
          )),
    );
  }
}

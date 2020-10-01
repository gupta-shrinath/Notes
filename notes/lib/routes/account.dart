import 'package:flutter/material.dart';
import 'package:notes/components/account_options.dart';
import 'package:notes/components/header.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/constants/text_style_constants.dart';
import 'package:notes/model/contributor.dart';
import 'package:notes/model/social_media.dart';
import 'package:notes/routes/contributors.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(
        Text('ACCOUNT', style: TextStyleConstants.kAppbarTextStyle),
        GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 172.0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffAB5BE8),
                    radius: 61.0,
                    child: Icon(
                      Icons.person,
                      size: 42.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFb56eff),
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'johndeo@email.com',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    AccountOptions(
                      text: 'Submissions',
                      onPressed: () {
                        print('pressed');
                      },
                      img: ImageConstants.kAssignment,
                    ),
                    AccountOptions(
                      text: 'Report Issue',
                      onPressed: () {
                        print('pressed');
                      },
                      img: ImageConstants.kReportIssue,
                    ),
                    AccountOptions(
                      text: 'Notice',
                      onPressed: () {
                        print('pressed');
                      },
                      icon: Icon(
                        Icons.description,
                        color: Color(0xffAB5BE8),
                        size: 24.0,
                      ),
                    ),
                    AccountOptions(
                      text: 'Contributers',
                      onPressed: () {
                        var contributor = Contributor(
                          name: 'John Doe',
                          imageURL: '',
                          message: 'Fun Project !',
                          roles: ['Developer', 'UI Designer'],
                          socialMedia: SocialMedia(
                              github: 'https://github.com/',
                              youtube: '',
                              spotify: ''),
                        );
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Contributors(
                                  contributor: contributor,
                                )));
                      },
                      icon: Icon(
                        Icons.person,
                        color: Color(0xffAB5BE8),
                        size: 24.0,
                      ),
                    ),
                    AccountOptions(
                      text: 'Update',
                      onPressed: () {
                        print('pressed');
                      },
                      img: ImageConstants.kUpdate,
                    ),
                    AccountOptions(
                      text: 'Third-party software',
                      onPressed: () {
                        print('pressed');
                      },
                      img: ImageConstants.kPrivacy,
                    ),
                    AccountOptions(
                      text: 'Logout',
                      onPressed: () {
                        print('pressed');
                      },
                      img: ImageConstants.kExitApp,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

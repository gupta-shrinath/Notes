import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/components/contributor_card.dart';
import 'package:notes/components/header.dart';
import 'package:notes/constants/text_style_constants.dart';
import 'package:notes/model/contributor.dart';

class Contributors extends StatelessWidget {
  final Contributor contributor;
  const Contributors({this.contributor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(
          Text('CONTRIBUTORS', style: TextStyleConstants.kAppbarTextStyle),
          GestureDetector(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          children: [
            ContributorCard(
              contributor: contributor,
            ),
            ContributorCard(
              contributor: contributor,
            ),
            ContributorCard(
              contributor: contributor,
            ),
          ],
        ));
  }
}

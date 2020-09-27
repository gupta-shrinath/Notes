import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/components/contributor_card.dart';
import 'package:notes/components/header.dart';
import 'package:notes/model/contributor.dart';

class Contributors extends StatelessWidget {
  final Contributor contributor;
  const Contributors({this.contributor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(
            Text(
              'Contributor',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_back_ios)),
        body: ListView(
          children: [
            ContributorCard(
              contributor: contributor,
            ),
          ],
        ));
  }
}

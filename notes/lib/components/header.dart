import 'package:flutter/material.dart';
import 'package:notes/constants/dimension_constants.dart';

Widget header(Text title, Widget leading) {
  return PreferredSize(
    preferredSize: Size.fromHeight(DimensionConstants.kAppbarHeight),
    child: AppBar(
      title: title,
      leading: leading,
      centerTitle: true,
    ),
  );
}

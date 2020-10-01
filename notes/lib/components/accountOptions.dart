import 'package:flutter/material.dart';

class AccountOptions extends StatelessWidget {
  final Function onPressed;
  final String text;
  final String img;
  final Icon icon;
  AccountOptions({this.text, this.onPressed, this.img, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 33.0,
            ),
            icon ??
                Image.asset(
                  img,
                  height: 24,
                  width: 24,
                ),
            SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

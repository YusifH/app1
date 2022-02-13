import 'package:app1/constants/color.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String lefttext;
  final String righttext;

  CategoryTitle(this.lefttext, this.righttext);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lefttext,
            style: TextStyle(fontSize: 20, color: kFont, fontWeight: FontWeight.bold),
            ),
          Text(
            righttext,
            style: TextStyle(color: kFontLight),
            )
        ],
      ),
    );
  }
}
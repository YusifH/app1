// ignore_for_file: prefer_const_constructors

import 'package:app1/constants/color.dart';
import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextSpan(
              text: 'Sizin üçün ən yeni kurslar',
              style: TextStyle(fontWeight: FontWeight.bold,
              color: kFont,
              fontSize: 26
              )
            ),
            TextSpan(text: ' '),
            TextSpan(text: '🥰',style: TextStyle(fontSize: 26))
          ]
        )),
    );
  }
}
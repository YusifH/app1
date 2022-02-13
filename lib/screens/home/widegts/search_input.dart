// ignore_for_file: prefer_const_constructors

import 'package:app1/constants/color.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 2)
            ),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.01),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Axtar', 
                hintStyle: TextStyle(color: kFontLight)
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 25,
            child: Container(
              child: TextButton(onPressed: (){}, child: Icon(Icons.search, color: kFontLight,),),
            )
          )
        ],
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app1/constants/color.dart';
import 'package:app1/models/course.dart';
import 'package:app1/screens/home/widegts/active_course.dart';
import 'package:app1/screens/home/widegts/category_title.dart';
import 'package:app1/screens/home/widegts/course_item.dart';
import 'package:app1/screens/home/widegts/emoji_text.dart';
import 'package:app1/screens/home/widegts/feature_course.dart';
import 'package:app1/screens/home/widegts/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),
      bottomNavigationBar: _buildNavigatinBar(),
    );
  }

  BottomNavigationBar _buildNavigatinBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: Icon(Icons.calendar_today)
        ),
        BottomNavigationBarItem(
          label: 'Save',
          icon: Icon(Icons.bookmark_border)
        ),
        
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(Icons.manage_accounts_outlined)
        ),
        
        
      ],
      );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      centerTitle: false,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          'Salam Yusif', 
          style: TextStyle(color: kFontLight, fontSize: 18
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, top: 5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3), width: 2
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Icon(Icons.notification_important_outlined, color: kFont,),
            ),
            Positioned(
             top: 15,
             right: 28,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(color: kAccent, shape: BoxShape.circle),
              )
            )
          ],
        )
      ],
    );
  }
}
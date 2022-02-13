import 'package:app1/constants/color.dart';
import 'package:app1/models/course.dart';
import 'package:app1/screens/detail/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course)
          ],
        ),
      ),
    );
  }
}


  
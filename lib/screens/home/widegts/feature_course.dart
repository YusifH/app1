import 'package:app1/models/course.dart';
import 'package:app1/screens/home/widegts/course_item.dart';
import 'package:flutter/material.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  final courselist = Course.generateCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Ən çox satılan', 'Daha çox'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: courselist.length,
              itemBuilder: (context, index) =>
              CourseItem(courselist[index]),
              separatorBuilder: (context, index) => SizedBox(width: 15,),
          ))
        ],
      ),
      
    );
  }
}
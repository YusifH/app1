import 'package:app1/constants/color.dart';
import 'package:app1/models/course.dart';
import 'package:flutter/material.dart';

class CoursePlan extends StatelessWidget {
  final Course course;
  CoursePlan(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 170,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.red,)
                  ],
                ),
                color: Colors.white24,
              )),
          SizedBox(width: 15,),
          Flexible(
              flex: 5,
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(course.title),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Text(course.describtion))
                      ],
                    )
                  ],
                )
              ),

          ),
        ],
      ),

    );
  }
}

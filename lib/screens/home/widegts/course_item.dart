// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app1/constants/color.dart';
import 'package:app1/screens/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:app1/models/course.dart';


class CourseItem extends StatelessWidget {

  final Course course;
  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    child: Image.asset(course.imageurl, fit: BoxFit.cover,)
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(course.authorImg, width: 30, height: 30,),
                            SizedBox(width: 8,),
                            Text(course.author,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: [
                            Text(course.title, style: TextStyle(fontSize: 16,))
                          ],
                        )
                      ],
                    ),
                  ) 
                )
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kAccent
              ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(course)));
            }, 
            child: Text('Start')))
        ],
      ),
      
    );
  }
}
import 'package:app1/constants/color.dart';
import 'package:app1/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescribtion extends StatelessWidget {
  final Course course;
  CourseDescribtion(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(course.authorImg, width: 30, fit: BoxFit.fitWidth,),
              SizedBox(width: 10),
              Text(course.author, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              SizedBox(width: 15,),
              Icon(Icons.lock_clock_rounded, color: kAccent,),
              Container(
                child: Text('1h : 35 min'),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(course.title, style: TextStyle(fontSize: 20, color: kFont, fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 15,),
          Text(course.describtion, style: TextStyle(fontSize: 18, color: kFontLight),),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Kurs Plani', style: TextStyle(fontSize: 20, color: kFont, fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.menu),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.grid_view),),
                      ],
                    )
                  ],
                )
          ),
        ],
      ),
    );
  }
}

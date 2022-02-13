import 'package:app1/constants/color.dart';
import 'package:app1/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
final Course course;
CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(course.imageurl, fit: BoxFit.fitHeight,),
                ),
              ),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                onPressed: (){}, 
                child: Text('Kursa Başla')
                )
              )
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: kBackground.withOpacity(0.4),
                borderRadius: BorderRadius.circular(25)
              ),
              child: IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.arrow_back_ios_new)),
            ) 
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 25,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: kBackground.withOpacity(0.4),
                borderRadius: BorderRadius.circular(25)
              ),
                child: IconButton(
                  onPressed: (){
                  }, 
                icon: Icon(Icons.bookmark_border)),
            ) 
          ),
        ],
      ),
    );
  }
}
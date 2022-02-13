// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:app1/constants/color.dart';
import 'package:app1/screens/home/widegts/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('1');
      },
      child: Container(
        child: Column(
          children: [
            CategoryTitle('Aktiv Kurslar', 'Daha cox'),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kFontLight.withOpacity(0.1),
                border: Border.all(
                  color: kFontLight.withOpacity(0.3), width: 1,
                ),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/img/course4.jpg', width: 60, fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter kursu 1',
                            style: TextStyle(fontSize: 18, color: kFont, fontWeight: FontWeight.bold),
                            ),
                          Text('2-ci bölüm', style: TextStyle(fontSize: 16, color: kFontLight))  
                        ],
                      )
                    ],
                  ),
                  CircularPercentIndicator(
                    radius: 30,
                    lineWidth: 5,
                    percent: 0.61,
                    center: Text('61%',
                    style: TextStyle(color: kAccent, fontWeight: FontWeight.bold),
                    ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
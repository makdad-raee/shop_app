import 'package:flutter/material.dart';

Widget buildOnBoardingItem()=>const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child:  Image(image: AssetImage('assets/images/markt pic.jpg',)))),
          SizedBox(height: 30,),
          Text('Screen title',),
          SizedBox(height: 15,),
          Text('Screen Body',),
          
        ],
      );
import 'package:flutter/material.dart';
import 'package:shope_app/modules/onboarding_models.dart';

Widget buildOnBoardingItem(OnBordingModel model)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Expanded(child: Center(child:  Image(image: AssetImage('assets/images/markt pic.jpg',),fit: BoxFit.cover,))),
         //const SizedBox(height: 30,),
          Text(model.title,),
          const SizedBox(height: 15,),
            Text(model.body,),
          
        ],
      );
import 'package:flutter/material.dart';
import 'package:shope_app/componants/componants.dart';

class OnBoardingSCreen extends StatelessWidget {
  const OnBoardingSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
           Expanded(child: PageView.builder(itemBuilder: (context, index) => buildOnBoardingItem(),itemCount: 3 ,),),
           const SizedBox(height: 40,),
           Row(
            children: [
             const Text('Indicator'),
            const Spacer(),
              FloatingActionButton(onPressed: () {
                
              },
              child:const  Icon(Icons.arrow_forward_ios),)
              //Text("botton")
            ],
           )
        ],),
      )
    );
  }
}
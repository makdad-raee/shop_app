import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/componants/componants.dart';
import 'package:shope_app/cubit/shop_cubit.dart';
import 'package:shope_app/cubit/shop_states.dart';
import 'package:shope_app/modules/login/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingSCreen extends StatefulWidget {
  const OnBoardingSCreen({super.key});

  @override
  State<OnBoardingSCreen> createState() => _OnBoardingSCreenState();
}

class _OnBoardingSCreenState extends State<OnBoardingSCreen> {
  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<ShopCubit,ShopState>(
      listener:(context, state) {
        
      }, builder: (context, state) {
        var cubit=ShopCubit.get(context);
        var list =cubit.onBording;
       
        return Scaffold(
        appBar: AppBar(
          actions: [
         TextButton(onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) =>const LoginScreen(),),(Route<dynamic> route)=>false);
         }, child:const Text("Skip",style: TextStyle(
          fontSize: 18,color: Colors.green,fontWeight: FontWeight.bold
         ),))
          ],
        ),
        body:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
             Expanded(child: PageView.builder(
              controller:cubit.pageController ,
              onPageChanged: (value) {
                if(value==cubit.onBording.length-1){
                  
                  
                  setState(() {
                   cubit.isLast=true;
                  });
                }else{
                  
                  setState(() {
                   cubit.isLast=false;
                  });
                }
                print(cubit.isLast.toString());
              },
              
              physics:const BouncingScrollPhysics(),
              
              itemBuilder: (context, index) => buildOnBoardingItem(list[index]),itemCount: list.length,),),
             const SizedBox(height: 40,),
             Row(
              children: [
               SmoothPageIndicator(
                effect:const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  expansionFactor: 4,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 5,
                  activeDotColor: defaulColor
                ),
                controller:cubit.pageController ,
                count: cubit.onBording.length),
              const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if(cubit.isLast==true){
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) =>const LoginScreen(),),(Route<dynamic> route)=>false);
                    }else if (cubit.isLast==false){
                      cubit.pageController.nextPage(
                    duration:const Duration(microseconds: 750,),
                   curve: Curves.fastLinearToSlowEaseIn,);
                    }
                  
                },
                child:const Icon(Icons.arrow_forward_ios),),
                //Text("botton")
              ],
             )
          ],),
        )
      );
      },
    );
  }
}
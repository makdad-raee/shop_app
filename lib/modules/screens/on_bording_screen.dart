import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/componants/componants.dart';
import 'package:shope_app/cubit/shop_cubit.dart';
import 'package:shope_app/cubit/shop_states.dart';

class OnBoardingSCreen extends StatelessWidget {
  const OnBoardingSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopState>(
      listener:(context, state) {
        
      }, builder: (context, state) {
        var list =ShopCubit.get(context).onBording;
       
        return Scaffold(
        appBar: AppBar(),
        body:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
             Expanded(child: PageView.builder(itemBuilder: (context, index) => buildOnBoardingItem(list[index]),itemCount: list.length,),),
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
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:shope_app/modules/onboarding_models.dart';
const defaulColor=Colors.green;

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
      Widget defaultTextbutton(
        {required String? text,
        required void Function()? onPressed,
        Color  color=Colors.green,
        }
      )=>Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: color,
                  
                  borderRadius: BorderRadius.circular(12)
                ),
                
                child: TextButton(
                  onPressed: onPressed,
                   child: Text(text!,style:const TextStyle(color: Colors.white,fontSize: 20),),),
              );
      Widget defaulatTextFormField({
        required TextEditingController controller,
        required TextInputType type,
        required String hinttext,
        required Widget prefixIcon,
        required String? Function(String?)? validator,
       bool ispassword=false,
       Widget? sufixIcon,
      
      })=>    TextFormField(
              validator: validator,
              
              keyboardType: type,
              controller:controller,
              decoration:InputDecoration(
                hintText: hinttext,
                prefixIcon:prefixIcon,
                suffixIcon: sufixIcon,
                
                
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)
              )) ,
            );
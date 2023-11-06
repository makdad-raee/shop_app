import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/cubit/shop_cubit.dart';
import 'package:shope_app/modules/onboarding/on_bording_screen.dart';
import 'package:shope_app/style/thems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ShopCubit(),)
      ],
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
    
        home:const OnBoardingSCreen(),
      ),
    );
  }
}
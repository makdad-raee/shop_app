import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/cubit/shop_cubit.dart';
import 'package:shope_app/modules/onboarding/on_bording_screen.dart';
import 'package:shope_app/network/cash_helper.dart';
import 'package:shope_app/network/dio_helper.dart';
import 'package:shope_app/simple_bloc_observer.dart';
import 'package:shope_app/style/thems.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  DioHelper.init();
  await CashHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShopCubit(),
        )
      ],
      child: MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: const OnBoardingSCreen(),
      ),
    );
  }
}

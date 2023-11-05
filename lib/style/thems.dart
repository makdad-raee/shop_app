import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme =ThemeData(
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    bodyLarge: GoogleFonts.lato(fontSize: 30,fontWeight: FontWeight.bold),
    bodyMedium: GoogleFonts.lato(fontSize: 25,fontWeight: FontWeight.bold),
    bodySmall: GoogleFonts.lato(fontSize: 40,fontWeight: FontWeight.bold),
    
  ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                  backgroundColor: Colors.green),
              primarySwatch: Colors.green,
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                  selectedItemColor: Colors.green,
                  elevation: 20,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.white),
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                  titleSpacing: 20.0,
                  iconTheme: IconThemeData(color: Colors.black),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: Colors.white,
                    statusBarIconBrightness: Brightness.dark,
                  ),
                  elevation: 0,
                  color: Colors.white,
                  titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )));

ThemeData darkTheme= ThemeData(
              textTheme: const TextTheme(),
              primarySwatch: Colors.green,
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.grey,
                elevation: 20,
                backgroundColor: HexColor('333739'),
                type: BottomNavigationBarType.fixed,
              ),
              scaffoldBackgroundColor: HexColor('333739'),
              appBarTheme: AppBarTheme(
               // backgroundColor: Colors.black,
                  titleSpacing: 20.0,

                  //backgroundColor: Colors.black,
                  iconTheme: const IconThemeData(color: Colors.white),
                  systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: HexColor('333739'),
                    statusBarIconBrightness: Brightness.light,
                  ),
                  elevation: 0,
                  color: Colors.white,
                  titleTextStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )));
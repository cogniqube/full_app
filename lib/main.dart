import 'package:flutter/material.dart';
import 'package:full_app/pages/Test_page.dart';
import 'package:full_app/pages/home.dart';
import 'package:full_app/pages/login_page.dart';
import 'package:full_app/pages/main_page.dart';
import 'package:full_app/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.appbar,
            foregroundColor: Colors.white,
            elevation: 4.0,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.red[900],
            unselectedItemColor: Colors.grey,
          ),
        ),
        //home: loginPage(),
        initialRoute: '/',
        routes:{
          '/': (context) => loginPage(),
          '/home': (context) => HomePage(),
          '/main': (context) => MainPage()
    },
    );
  }
}

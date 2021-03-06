import 'package:flutter/material.dart';
import 'package:flutter_food/pages/food/food_details_page.dart';
import 'package:flutter_food/pages/home/home_page.dart';
import 'package:flutter_food/pages/login/login_page.dart';

import 'pages/home/home_page.dart';
import 'pages/login/login_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.pinkAccent
          ),
          headline3: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.white
          ),
          headline4: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.white
          ),
          headline2: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.normal,color: Colors.white
          ),
          headline6: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold,color: Colors.white,
          ),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
      ),
      //home: LoginPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
        FoodDetails.routeName: (context) => const FoodDetails(),
      },
      initialRoute: LoginPage.routeName,
    );
  }
}

import 'package:flutter/material.dart';

import '../utils/my_colors.dart';
import '../view/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page 404 error UI',
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 20,
          color: MyColors.mainTextColor,
          fontWeight: FontWeight.w500,
        ),
        headline2: TextStyle(
          fontSize: 80,
          color: MyColors.mainTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontSize: 27,
          color: MyColors.mainTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 18,
          color: MyColors.mainSubTitileColor,
          fontWeight: FontWeight.w400,
        ),
        headline5: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      )),
      home: const FirstScreen(),
    );
  }
}

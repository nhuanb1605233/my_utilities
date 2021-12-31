import 'package:flutter/material.dart';
import 'package:my_utilities/common/constants/color_constants.dart';
import 'package:my_utilities/pages/bottom_bar/bottom_bar_page.dart';
import 'package:my_utilities/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          bodyText1:TextStyle(color: kBodyTextColor),
        )
      ),
      home: BottomBarPage(),
    );
  }
}



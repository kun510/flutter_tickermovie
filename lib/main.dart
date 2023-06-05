import 'package:flutter/material.dart';
import 'package:movie_tiket/widget/helpers/assets_helper.dart';
import 'package:movie_tiket/widget/themes/app_colors.dart';
import 'package:movie_tiket/widget/themes/app_text_style.dart';

import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: AppColors.darkerBackground,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.white,
              displayColor: AppColors.white,
            ),
      ),
      home: const Homepage(),
    );
  }
}



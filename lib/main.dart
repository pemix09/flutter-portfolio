import 'package:flutter/material.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/main_screed.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "shizzed portfolio",
      theme: ThemeData.dark().copyWith(
        primaryColor: constants.primaryColor,
        scaffoldBackgroundColor: constants.bgColor,
        canvasColor: constants.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              titleMedium: TextStyle(color: Colors.white),
              titleSmall: TextStyle(color: constants.bodyTextColor),
            ),
      ),
      home: MainScreen(),
    );
  }
}

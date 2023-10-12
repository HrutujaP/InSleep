import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:in_sleep/Screens/HomeScreen/HomeScreen.dart';
import 'package:in_sleep/constants/appcolors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.backGroundColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.backGroundColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.backGroundColor),
        useMaterial3: true,
        textTheme: GoogleFonts.hindSiliguriTextTheme(textTheme).copyWith(
            // bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
            ),
      ),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
      },
      home: const HomeScreen(),
    );
  }
}

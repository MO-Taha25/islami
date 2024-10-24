import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/hadeth/ahdeth.dart';
import 'package:islami/home_Screen.dart';
import 'package:islami/quran/Sures.dart';

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
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuresScreen.routName: (_) => SuresScreen(),
        Hadethcontent.routName: (_) => Hadethcontent(),
      },
      initialRoute: HomeScreen.routeName,
      theme: AppThem.lightThem,
      darkTheme: AppThem.darkThem,
      themeMode: ThemeMode.light,
    );
  }
}

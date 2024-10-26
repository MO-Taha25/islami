import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/hadeth/ahdeth.dart';
import 'package:islami/home_Screen.dart';
import 'package:islami/quran/Sures.dart';
import 'package:islami/settings/settings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => SettingsProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
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
      themeMode: settingsProvider.themeMode,
    );
  }
}

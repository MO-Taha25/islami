import 'package:flutter/material.dart';
import 'package:islami/settings/languag.dart';
import 'package:islami/settings/settings.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<Languag> Language = [
    Languag(name: 'English', code: 'en'),
    Languag(name: 'العريبة', code: 'ar'),
  ];
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dark Them',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Switch(
                value: settingsProvider.isDark,
                onChanged: (isDark) => settingsProvider
                    .changeTheme(isDark ? ThemeMode.dark : ThemeMode.light),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<Languag>(
                  value: Language.first,
                  items: Language.map(
                    (Languages) => DropdownMenuItem(
                      child: Text(Languages.name),
                      value: Languages,
                    ),
                  ).toList(),
                  onChanged: (slectedLanguage) {
                    if (slectedLanguage != null) {
                      print(slectedLanguage.code);
                    }

                    setState(() {});
                  },
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

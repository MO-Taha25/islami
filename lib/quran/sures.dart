import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_them.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/settings/settings.dart';
import 'package:islami/widget/lode_indcator.dart';
import 'package:provider/provider.dart';

class SuresScreen extends StatefulWidget {
  static const String routName = '/sure';

  @override
  State<SuresScreen> createState() => _SuresScreenState();
}

class _SuresScreenState extends State<SuresScreen> {
  late SuraContArgs arg;

  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    arg = ModalRoute.of(context)!.settings.arguments as SuraContArgs;
    if (ayat.isEmpty) {
      LodeSura();
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              'assets/images/${Provider.of<SettingsProvider>(context).backgroundImagName}.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arg.suraName),
          ),
          body: Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(top: 129, bottom: 98, right: 29, left: 29),
            decoration: BoxDecoration(
                color: AppThem.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: ayat.isEmpty
                ? LodeIndcator()
                : ListView.builder(
                    itemBuilder: (_, index) => Text(
                      ayat[index],
                      style: TextStyle(fontSize: 24, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    itemCount: ayat.length,
                  ),
          ),
        ));
  }

  Future<void> LodeSura() async {
    // await Future.delayed(Duration(seconds: 2));
    String sura =
        await rootBundle.loadString('assets/text/${arg.index + 1}.txt');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}

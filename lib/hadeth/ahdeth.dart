import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_them.dart';
import 'package:islami/hadeth/hadeth_tap.dart';
import 'package:islami/settings/settings.dart';
import 'package:provider/provider.dart';

class Hadethcontent extends StatelessWidget {
  static const String routName = '/hadeth';
  @override
  Widget build(BuildContext context) {
    HadethTap hadeth = ModalRoute.of(context)!.settings.arguments as HadethTap;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
              'assets/images/${Provider.of<SettingsProvider>(context).backgroundImagName}.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(hadeth.title),
          ),
          body: Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(top: 129, bottom: 98, right: 29, left: 29),
            decoration: BoxDecoration(
                color: AppThem.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: ListView.builder(
              itemBuilder: (_, index) => Text(
                hadeth.content[index],
                style: TextStyle(fontSize: 24, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              itemCount: hadeth.content.length,
            ),
          ),
        ));
  }
}

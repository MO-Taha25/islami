import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_them.dart';
import 'package:islami/hadeth/hadeth_tap.dart';

class Hadethcontent extends StatelessWidget {
  static const String routName = '/hadeth';
  @override
  Widget build(BuildContext context) {
    HadethTap hadeth = ModalRoute.of(context)!.settings.arguments as HadethTap;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
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
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              itemCount: hadeth.content.length,
            ),
          ),
        ));
  }
}

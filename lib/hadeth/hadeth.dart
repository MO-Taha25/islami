import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/function.dart/llineFunction.dart';
import 'package:islami/hadeth/ahdeth.dart';
import 'package:islami/hadeth/hadeth_tap.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethTap> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    LoadAhadethFile();
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/hadeth_logo.png',
            height: MediaQuery.sizeOf(context).height * 0.25,
          ),
          Column(
            children: [
              LineFunction(),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'الأحاديث',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
              LineFunction(),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, index) => InkWell(
                onTap: () => Navigator.of(context).pushNamed(
                  Hadethcontent.routName,
                  arguments: ahadeth[index],
                ),
                child: Text(
                  ahadeth[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              itemCount: ahadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  void LoadAhadethFile() async {
    String ahadthFileConten =
        await rootBundle.loadString('assets/text/ahadeth.txt');
    List<String> ahadthString = ahadthFileConten.split('#');
    ahadeth = ahadthString.map((hadethString) {
      List<String> ahadethLins = hadethString.trim().split('\n');
      String title = ahadethLins[0];
      ahadethLins.removeAt(0);
      List<String> content = ahadethLins;
      return HadethTap(title, content);
    }).toList();
    setState(() {});
  }
}

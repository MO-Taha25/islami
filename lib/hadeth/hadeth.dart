import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/hadethContent.dart';
import 'package:islami/hadeth/hadeth_tap.dart';

class HadethScreen extends StatelessWidget {
  List<HadethTap> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/hadeth_logo.png',
            height: MediaQuery.sizeOf(context).height * 0.25,
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
   ahadeth = ahadthString.map(()) 
  }
}

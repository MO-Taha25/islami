import 'package:flutter/material.dart';
import 'package:path/path.dart';

class SabahScreen extends StatefulWidget {
  @override
  State<SabahScreen> createState() => _SabahScreenState();
}

class _SabahScreenState extends State<SabahScreen> {
  int count = 0;
  List<String> text = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int index = 0;
  String displayedWord = "سبحان الله";
  AnimationController? _controller;
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/head_sebha_logo.png',
              alignment: AlignmentDirectional(100, 150),
            ),
            RotationTransition(
              turns: AlwaysStoppedAnimation(turns),
              child: InkWell(
                onTap: () {
                  incrementCounter();
                },
                child: Image.asset(
                  'assets/images/body_sebha_logo.png',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'عدد التسبيحات',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  border: Border.symmetric(
                      horizontal:
                          BorderSide(width: 15, style: BorderStyle.none)),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Text(
                textAlign: TextAlign.center,
                count.toString(),
                style:
                    TextStyle(backgroundColor: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Text(
                displayedWord,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      count++;
      if (count <= 33) {
        displayedWord = "سبحان الله";
      } else if (count <= 66) {
        displayedWord = "الحمد لله";
      } else if (count <= 99) {
        displayedWord = "الله أكبر";
      }
      if (count == 99) {
        count = 0;
        displayedWord = "سبحان الله";
      }
      turns -= 1 / 4;
      _controller?.forward(from: 0);
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LodeIndcator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,));
  }
}

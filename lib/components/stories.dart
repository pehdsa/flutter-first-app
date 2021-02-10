import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  
  final topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
          Text("Stories", style: TextStyle(fontWeight: FontWeight.bold),)
      ],
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          //stories,
        ],
      ),
    );
  }
}
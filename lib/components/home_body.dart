import 'package:flutter/material.dart';
import './list.dart';

class HomeBody extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Flexible(child: InstaList(),)
            ],
        );
    }
}
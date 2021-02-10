import 'package:flutter/material.dart';
import './stories.dart';

class InstaList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        var deviceSize = MediaQuery.of(context).size;

        return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => index == 0 ? 
              SizedBox(
                height: deviceSize.height * 0.2,
                child: InstaStories(),
              ) : Column(),
        );
    }
}
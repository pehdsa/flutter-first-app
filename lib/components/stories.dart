import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  
  final topText = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
            Text("Stories", style: TextStyle(fontWeight: FontWeight.bold),),
            Row(
                children: <Widget>[
                    Icon(Icons.play_arrow),
                    Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
                ],
            )
      ],
  );

  final stories = Expanded(
        child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                        Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage("https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg"),
                                )
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        ),
                        index == 0
                            ? Positioned(
                                right: 10.0,
                                child: new CircleAvatar(
                                    backgroundColor: Colors.blueAccent,
                                    radius: 10.0,
                                    child: new Icon(
                                        Icons.add,
                                        size: 14.0,
                                        color: Colors.white,
                                    ),
                                ))
                            : new Container()
                    ],
                )
            ),
        ),
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
                stories,
            ],
        ),
    );
  }
}
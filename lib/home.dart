import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                    'You have pushed the button this many times:',
                ),
                Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                ),
                ],
            ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              
            ],
            currentIndex: 0,
            selectedItemColor: Colors.amber[800],
            //onTap: _onItemTapped,
          ),
        
        floatingActionButton: FloatingActionButton(
            onPressed: () { Navigator.of(context).pushNamed('/about'); },
            tooltip: 'Increment',
            child: Icon(Icons.add),
        ),
    );
  }
}
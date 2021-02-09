import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }

    final topBar = new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: new Icon(Icons.camera_alt),
        title: new Text('Home'),
        actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(Icons.send),
            )
        ],
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                        'You have pushed the button this many times:',
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
                label: 'Sobre',
              ),              
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).pushNamed('/about'),
            tooltip: 'Increment',
            child: Icon(Icons.add),
        ),
    );
  }
}

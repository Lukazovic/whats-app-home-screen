import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.green,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.green,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1D5D51),
          title: Text('WhatsApp Clone'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              tooltip: 'Search',
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
              tooltip: 'More options',
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Text("TEST"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed: () {},
          child: Icon(Icons.chat),
        ),
      ),
    );
  }
}

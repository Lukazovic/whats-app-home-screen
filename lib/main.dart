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
  List<Widget> containers = [
    Container(
      child: Center(
        child: Text(
          'Camera',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Container(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              title: Text(
                'Dog',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '12:00',
                      style: TextStyle(color: Colors.green),
                    ),
                    CircleAvatar(
                      radius: 10,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.greenAccent[700],
                    ),
                  ],
                ),
              ),
              subtitle: Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.done_all,
                      color: Colors.blue,
                    ),
                    Text('Au au'),
                  ],
                ),
              ),
              leading: CircleAvatar(
                radius: 25,
                child: Container(
                  child: Image.asset('assets/images/Icon-Dog.png'),
                ),
              ),
            ),
          );
        },
      ),
    ),
    Container(
      child: Center(
        child: Text(
          'Status',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          'Calls',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ];

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
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
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
        body: TabBarView(
          children: containers,
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

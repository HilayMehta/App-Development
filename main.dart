import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Gmail Drawer ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Expanded(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 120.0,
                child: DrawerHeader(
                  child: Text(
                    'Gmail',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 29, horizontal: 0),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                ),
                //
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 2.0, right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                    color: Colors.red[50],
                  ),
                  child: ListTile(
                    dense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    title: Text('Primary'),
                    leading: Wrap(
                      spacing: 12, // space between two icons
                      children: <Widget>[
                        Icon(Icons.inbox), // icon-1
                        //Icon(Icons.message), // icon-2
                      ],
                    ),
                    trailing: Text(
                      "99+",
                      style: TextStyle(
                        color: Colors.red[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text('Social'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.people), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Promotion'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.local_offer), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                trailing: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: Text(
                      "3 new",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[800],
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Updates'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.info), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                trailing: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: Text(
                      "1 new",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Forums'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.forum), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 40,
                    child: Text('ALL LABELS'),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  ),
                ],
              ),
              ListTile(
                title: Text('Starred'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.star), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Snoozed'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.snooze), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Important'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.label_important), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                trailing: Text('99+'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Sent'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.send), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Scheduled'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.send), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('OutBox'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.move_to_inbox), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Drafts'),
                leading: Wrap(
                  spacing: 12, // space between two icons
                  children: <Widget>[
                    Icon(Icons.restore_page), // icon-1
                    //Icon(Icons.message), // icon-2
                  ],
                ),
                trailing: Text('32'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text('My Page!'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

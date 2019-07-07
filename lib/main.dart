import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_ui/UserFeedPage.dart';

import 'MessagesPage.dart';
import 'NotificationPage.dart';
import 'SearchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedPageIndex = 0;
  var Pages=[
    UserFeedPage(),
    SearchPage(),
    NotificationPage(),
    MessagesPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              FontAwesomeIcons.home,
              color: selectedPageIndex == 0 ? Colors.blue : Colors.blueGrey,
            )),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            FontAwesomeIcons.search,
            color: selectedPageIndex == 1 ? Colors.blue : Colors.blueGrey,
          ),
        ),
        BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              FontAwesomeIcons.bell,
              color: selectedPageIndex == 2 ? Colors.blue : Colors.blueGrey,
            )),
        BottomNavigationBarItem(
          title: Text(""),
          icon: Icon(
            FontAwesomeIcons.envelope,
            color: selectedPageIndex == 3 ? Colors.blue : Colors.blueGrey,
          ),
        ),
      ],onTap: (index){
        setState(() {
          selectedPageIndex=index;
        });
      },currentIndex: selectedPageIndex,),
      body: Pages[selectedPageIndex],
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

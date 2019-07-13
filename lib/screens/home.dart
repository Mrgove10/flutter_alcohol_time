import 'package:flutter/material.dart';
import 'package:flutter_alcohol_time/screens/start.dart';
import 'package:flutter_alcohol_time/screens/options.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  //extends the stats of home widget ( is a state)
  @override
  Widget build(BuildContext context) {
    Widget widgetForBody = StartWidget();
    return new Scaffold(
      appBar: AppBar(
        title: Text('Alcohol Time'),
        //backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('start '),
              onTap: () {
                // Update the state of the app
                setState(() {
                  widgetForBody = new StartWidget();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('options'),
              onTap: () {
                // Update the state of the app
                 setState(() {
                  widgetForBody = new OptionWidget();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: new StartWidget(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

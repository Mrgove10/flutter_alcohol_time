import 'package:flutter/material.dart';
import 'options.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  //extends the stats of home widget ( is a state)
  @override
  Widget build(BuildContext context) {
    Widget widgetForBody = OptionWidget();
    Scaffold mainBody = Scaffold(
      appBar: AppBar(
        title: Text('Alcohol Time ⏰'),
        //backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                /*child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),*/
                ),
            ListTile(
              title: Text('TestItem'),
              onTap: () {
                // Update the state of the app
                setState(() {
                  widgetForBody = OptionWidget();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
       body: new Center(child: new HomeWidget()),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
    return mainBody;
  }
}

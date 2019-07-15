import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class OptionPage extends StatefulWidget {

  int _weight = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text('Options'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Text("Sexe"),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Title(
                  color: Colors.black,
                  child: Text("Sexe",style: heih,),
                ),
                Radio(),
                Text("Female"),
                Radio(),
              ],
            ),
            Text("Poids"),
            new NumberPicker.integer(
                initialValue: 50,
                minValue: 20,
                maxValue: 500,
                onChanged: (newValue) =>
                    setState(() => _weight = newValue)),
            new Text("Current number: $_weight"),),

            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter a search term'),
            ),
          ],
        ),
      ),
      // mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

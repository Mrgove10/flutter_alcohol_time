import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('start'),
        //backgroundColor: Colors.black,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: const Text(
            'start',
            style: TextStyle(fontSize: 20)
          ),
        ),
      ),
    );
  }
}
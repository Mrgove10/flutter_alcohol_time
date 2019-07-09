import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Options'),
        //backgroundColor: Colors.black,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: const Text(
            'go to home page',
            style: TextStyle(fontSize: 20)
          ),
        ),
      ),
    );
  }
}
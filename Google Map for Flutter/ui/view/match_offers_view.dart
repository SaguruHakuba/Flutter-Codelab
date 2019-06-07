import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class LocationOffersPage extends StatefulWidget {
  
  LocationOffersPage();

  @override 
  _LocationOffersPageState createState() => _LocationOffersPageState();
}

class _LocationOffersPageState extends State<LocationOffersPage> {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Offer'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      )
    );
  }
}
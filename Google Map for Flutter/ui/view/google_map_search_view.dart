import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_map_in_flutter/ui/presenter/google_map_search_presenter.dart';
import 'package:google_map_in_flutter/ui/viewmodel/google_map_search_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  final GoogleMapPresenter presenter;
  final String title;

  MyHomePage(this.presenter, {Key key, this.title}) : super(key: key);

  @override 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Completer<GoogleMapController> _mapController = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  void _onMapCreated(GoogleMapController controller) {
    _mapController.complete(controller);
  }

  TextEditingController mapSearchController = TextEditingController();
  final FocusNode _zipCodeSearchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Maps Sample App'),
          backgroundColor: Colors.green[700],
          actions: <Widget>[
            RaisedButton(
              color: Colors.green[700],
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () => this.widget.presenter.showMatchedLocationOffers(context),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: mapSearchController,
                keyboardType: TextInputType.number,
                focusNode: _zipCodeSearchFocus,
                textInputAction: TextInputAction.done,
                onChanged: (v) => mapSearchController.text = v,
                decoration: InputDecoration(
                  hintText: 'Search places',
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: _kGooglePlex,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () => this.widget.presenter.onCurrentLocationPressed(),
                    fillColor: Colors.deepOrange,
                    splashColor: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20.0),
                      child: Text('GPS Location'),
                    ),
                    shape: const StadiumBorder(),
                  ),
                  RawMaterialButton(
                    onPressed: () => this.widget.presenter.onSearchLocationPressed(mapSearchController.text),
                    fillColor: Colors.deepOrange,
                    splashColor: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 20.0),
                      child: Text('Search Location'),
                    ),
                    shape: const StadiumBorder(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}

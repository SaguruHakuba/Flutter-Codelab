import 'package:flutter/material.dart';

import 'package:google_map_in_flutter/ui/viewmodel/google_map_search_model.dart';
import 'package:google_map_in_flutter/ui/view/match_offers_view.dart';

class GoogleMapPresenter {
  void onCurrentLocationPressed() {}
  void onSearchLocationPressed(v) {}
  void showMatchedLocationOffers(v) {}
}

class MapSearchPresenter implements GoogleMapPresenter {
  GoogleMapModel _googleMapModel;

  MapSearchPresenter() {
    this._googleMapModel = GoogleMapModel(45.521563, -122.677433);
  }

  @override
  void onCurrentLocationPressed() {
    print("Find Curernt Location Button pressed");
  }

  void onSearchLocationPressed(value) {
    print("Search Location Button pressed");
  }

  void showMatchedLocationOffers(context) {
    print("Show the matched result offers depending on locations.");
    Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LocationOffersPage()),
          );
  }
}

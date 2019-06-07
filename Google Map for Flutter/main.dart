import 'package:flutter/material.dart';
import 'package:google_map_in_flutter/ui/presenter/google_map_search_presenter.dart';
import 'package:google_map_in_flutter/ui/view/google_map_search_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Google Map in Flutter Demo',
    theme: ThemeData(
    primarySwatch: Colors.blue,
    ),
    home: MyHomePage(MapSearchPresenter(), title: 'Google Map in Flutter'),
    );
  }
}

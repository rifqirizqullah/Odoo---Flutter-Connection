import 'package:flutter/material.dart';
import 'package:odoo_flutter/app_menu/checkIn_page.dart';

import 'app_menu/checkIn_page.dart';

 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: new CheckIn(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );

  }
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login'){
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => CheckIn(),
      fullscreenDialog: true
    );
  }
}

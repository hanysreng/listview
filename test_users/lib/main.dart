import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:test_users/src/configs/routes/beamer.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: simpleLocationBuilder,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
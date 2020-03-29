import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(new TinkerApp());

class TinkerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Homepage(),
    );
  }
}

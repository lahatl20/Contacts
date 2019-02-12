import 'package:flutter/material.dart';
import 'contact_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final String appTitle = 'Contacts';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: Text(appTitle)),
        body: DisplayContacts(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:universal_event/sdk.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        body: Page1()),
      routes: {
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}

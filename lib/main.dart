import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
      routes: {
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}





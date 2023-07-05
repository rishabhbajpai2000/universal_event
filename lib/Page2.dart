import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Page 3'),
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
              },
            ),
            SizedBox(height: 16),
            Consumer<Counter>(
              builder: (context, counter, _) {
                if (counter.count >= 5) {
                  return Text(
                    'Event reached 5!',
                    style: TextStyle(fontSize: 20),
                  );
                } else {
                  return ElevatedButton(
                    child: Text('Trigger Event'),
                    onPressed: () {
                      counter.increment();
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Counter.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go back to Page 1'),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
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

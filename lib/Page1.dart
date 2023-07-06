import 'package:flutter/material.dart';
import 'package:universal_event/sdk.dart';



class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Page 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  sendTheEvent();
                },
                child: Text('Trigger Event')),
          ],
        ),
      ),
    );
  }
}

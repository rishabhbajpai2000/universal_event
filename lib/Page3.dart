import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_event/sdk.dart';



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

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: const Color(0xff3a243b),
      textColor: Colors.white,
      fontSize: 14.0);
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void showBottomSheetFromAnywhere() {
  final context = scaffoldKey.currentContext;
  if (context != null) {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Event completed',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text('The event was triggered five times '),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Close'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

void showPopupFromAnywhere() {
  final context = scaffoldKey.currentContext;
  if (context == null)
    return;
  else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Event Completed'),
          content: Text('The event was triggered five times'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

int count = 0;
void sendTheEvent() {
  // here the event is being sent to the server
  count += 1;
  if (count == 5) {
    // toastMessage("Event triggered, and pop up shown. ");
    // showBottomSheetFromAnywhere();
    showPopupFromAnywhere();
    count = 0;
  }
}

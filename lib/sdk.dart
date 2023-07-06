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

int count = 0;
void sendTheEvent() {
  // here the event is being sent to the server
  count += 1;
  if (count == 5) {
    toastMessage("Event triggered, and pop up shown. ");
    count = 0;
  }
}

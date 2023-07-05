
import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    if (_count == 5) {
      // Trigger the event when count reaches 5
      // You can perform any action here
      print('Event reached 5!');
    }
    notifyListeners();
  }
}

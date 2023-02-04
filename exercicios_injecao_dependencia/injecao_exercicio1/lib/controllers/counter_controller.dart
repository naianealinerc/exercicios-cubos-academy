import 'package:flutter/foundation.dart';
import '../services/i_counter_service.dart';

class CounterController extends ChangeNotifier {

  int value = 0; 

  final ICounterService _counterService; 

  CounterController(this._counterService);
  

  void increment() {
    value = _counterService.add(value);
    notifyListeners();
  }

  void decrement() {
    value = _counterService.subtract(value);
    notifyListeners();
  }
}

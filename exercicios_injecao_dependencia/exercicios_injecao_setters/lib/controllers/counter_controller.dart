import 'package:exercicios_injecao_setters/services/counter_service.dart';
import 'package:flutter/foundation.dart';

class CounterController extends ChangeNotifier {
 
  late CounterService _counterService;

  void setCounterService(CounterService counterService) =>
      _counterService = counterService;

  CounterService get counter => _counterService;

  int value = 0;

  void increment() {
    value = _counterService.add(value);
    notifyListeners();
  }

  void decrement() {
    value = _counterService.subtract(value);
    notifyListeners();
  }
}

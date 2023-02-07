import 'package:flutter/foundation.dart';
import 'package:injecao_exercicio_provider/services/i_counter_service.dart';



class CounterController extends ChangeNotifier {
  late final ICounterService _counterService;

  CounterController(this._counterService);

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

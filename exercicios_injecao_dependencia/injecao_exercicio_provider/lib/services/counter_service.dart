import 'package:injecao_exercicio_provider/services/i_counter_service.dart';

class CounterService extends ICounterService {

  @override
  int add(int value) {
    return value + 1;
  }

  @override
  int subtract(int value) {
    return value - 1;
  }
}

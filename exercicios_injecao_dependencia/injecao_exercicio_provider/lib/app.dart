import 'package:flutter/material.dart';
import 'package:injecao_exercicio_provider/controllers/counter_controller.dart';
import 'package:injecao_exercicio_provider/services/counter_service.dart';
import 'package:injecao_exercicio_provider/views/counter_view.dart';
import 'package:provider/provider.dart';

import 'services/i_counter_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ICounterService>(create: (context) => CounterService()),
        ChangeNotifierProvider(create: (context) => CounterController(context.read())),
      ],
      child: const MaterialApp(
        title: "Injeção de Dependências",
        home: CounterView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

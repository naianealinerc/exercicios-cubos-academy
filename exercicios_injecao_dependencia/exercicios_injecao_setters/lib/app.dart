import 'package:exercicios_injecao_setters/views/counter_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Injeção de Dependências",
      home: CounterView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

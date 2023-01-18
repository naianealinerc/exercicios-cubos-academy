import 'package:ecommerce_carrinho_de_compras/resources/theme.dart';
import 'package:flutter/material.dart';
import 'UI/home_app.dart';

void main() async {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.themeLight,
      home: const HomeApp(),
    );
  }
}

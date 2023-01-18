import 'package:ecommerce_carrinho_de_compras/UI/screens/cart_view.dart';
import 'package:ecommerce_carrinho_de_compras/controller/products_cart_controller.dart';
import 'package:ecommerce_carrinho_de_compras/resources/strings.dart';
import 'package:ecommerce_carrinho_de_compras/resources/theme.dart';
import 'package:flutter/material.dart';
import 'screens/home_view.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final theme = ThemeApp.themeLight;
  int _selectedIndex = 0;

  final controller = CartController();

  @override
  void initState() {
    super.initState();
    controller.getProducts();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> screensView = [
      HomeView(
        controller: controller,
      ),
      CartView(
        controller: controller,
      ),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: screensView.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: Strings.labelHome),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart), label: Strings.labelCart),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

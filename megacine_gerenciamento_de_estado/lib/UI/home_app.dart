import 'package:flutter/material.dart';
import '../controllers/theme_controller.dart';
import '../resources/strings.dart';
import 'components/switch_button_theme.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({
    Key? key,
    required this.themeController,
  }) : super(key: key);

  final ControllerThemeMode themeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.titleApp),
        flexibleSpace: const SizedBox(height: 20),
        actions: [
          SwitchButtonTheme(themeController: themeController),
        ],
        bottom: TabBar(tabs: []),
      ),
    );
  }
}

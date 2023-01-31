import 'package:flutter/material.dart';
import 'package:megacine_gerenciamento_de_estado/UI/app_view_model.dart';
import 'package:megacine_gerenciamento_de_estado/UI/controllers/theme_controller.dart';
import 'package:megacine_gerenciamento_de_estado/resources/theme.dart';
import 'package:provider/provider.dart';
import 'UI/home_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final themes = ThemeApp();
  final themeController = ControllerThemeMode();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeController.themeMode,
      builder: (BuildContext context, value, Widget? child) {
        return ChangeNotifierProvider(
          create: (context) => AppViewModel(),
          child: MaterialApp(
            darkTheme: themes.themeDark,
            theme: themes.themeLight,
            themeMode: themeController.themeMode.value,
            debugShowCheckedModeBanner: false,
            home: HomeApp(themeController: themeController),
          ),
        );
      },
    );
  }
}

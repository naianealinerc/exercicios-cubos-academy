

import 'package:flutter/material.dart';

import '../../controllers/theme_controller.dart';

class SwitchButtonTheme extends StatelessWidget {
  const SwitchButtonTheme({
    Key? key,
    required this.themeController,
  }) : super(key: key);

  final ControllerThemeMode themeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        margin: const EdgeInsets.only(top: 12, bottom: 12),
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffff6347),
              width: 1,
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(40)),
        child: SizedBox(
          width: 45,
          height: 27,
          child: Switch(
              value: themeController.isDark,
              onChanged: (value) {
                themeController.changeTheme();
              }),
        ),
      ),
    );
  }
}

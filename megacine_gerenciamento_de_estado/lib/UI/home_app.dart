import 'package:flutter/material.dart';
import '../controllers/theme_controller.dart';
import '../resources/strings.dart';
import 'categories_pages.dart';
import 'components/switch_button_theme.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({
    Key? key,
    required this.themeController,
  }) : super(key: key);

  final ControllerThemeMode themeController;

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with TickerProviderStateMixin {
  static const List<Tab> _tabs = [
    Tab(
      child: Text(
        "Populares",
      ),
    ),
    Tab(
      child: Text(
        "Mais avaliados",
      ),
    )
  ];
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.titleApp),
        flexibleSpace: const SizedBox(height: 20),
        actions: [
          SwitchChangeTheme(themeController: widget.themeController),
        ],
        bottom: TabBar(
          padding: const EdgeInsets.only(right: 148),
          isScrollable: true,
          indicatorColor: Colors.transparent,
          tabs: _tabs,
          controller: tabController,
        ),
      ),
      body: CategoriesPages(tabController: tabController),
    );
  }
}


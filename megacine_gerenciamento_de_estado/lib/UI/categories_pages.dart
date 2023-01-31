import 'package:flutter/material.dart';
import 'package:megacine_gerenciamento_de_estado/UI/app_view_model.dart';
import 'package:megacine_gerenciamento_de_estado/UI/views/top_rated_view.dart';
import 'package:provider/provider.dart';
import 'views/popular_movies_view.dart';

class CategoriesPages extends StatefulWidget {
  const CategoriesPages({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  State<CategoriesPages> createState() => _CategoriesPagesState();
}

class _CategoriesPagesState extends State<CategoriesPages> {


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<AppViewModel>(context).getPopularMovies();
    Provider.of<AppViewModel>(context).getTopRatedMovies();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: widget.tabController, children: [
      ViewPopularMovies(),
      ViewTopRatedMovies()
    ]);
  }

}

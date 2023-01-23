import 'package:flutter/material.dart';
import 'package:megacine_gerenciamento_de_estado/UI/app_view_model.dart';
import 'package:megacine_gerenciamento_de_estado/data/movies_repository.dart';
import 'package:megacine_gerenciamento_de_estado/models/movie_model.dart';

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
  late final AppViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = AppViewModel();
    viewModel.getPopularMovies();
    viewModel.getTopRatedMovies();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: widget.tabController, children: [
      AnimatedBuilder(
        animation: viewModel,
        builder: (context, child) {
          if (viewModel.listPopular.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
                itemCount: 18,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: ((context, index) {
                  final movie = viewModel.listPopular[index];
                  return itemBuilder(movie);
                }));
          }
        },
      ),
      const Center(
        child: Text("texto Mais avaliados"),
      ),
    ]);
  }

  // TODO Consertar espaço de itemBuilder 

  Widget itemBuilder(MovieModel movie) {
    return SizedBox(
      width: 80,
      height: 150,
      child: Column(
        children: [
          SizedBox(
            width: 70,
            height: 138,
            child: Image.network(
              movie.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Text(movie.name),
        ],
      ),
    );
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}

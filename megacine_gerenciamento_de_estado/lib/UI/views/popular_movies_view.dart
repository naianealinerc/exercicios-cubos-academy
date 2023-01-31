
import 'package:flutter/material.dart';
import 'package:megacine_gerenciamento_de_estado/UI/app_view_model.dart';
import 'package:provider/provider.dart';
import '../components/item_movie_builder.dart';

class ViewPopularMovies extends StatelessWidget {
  const ViewPopularMovies({
    Key? key,
    // required this.viewModel,
  }) : super(key: key);

  // final AppViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: ((context, viewModel, child) {
        if (viewModel.listPopular.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
                itemCount: 18,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 13,
                    childAspectRatio: 0.45),
                itemBuilder: ((context, index) {
                  final movie = viewModel.listPopular[index];
                  return ItemMovieBuilder(context: context, movie: movie);
                })),
          );
        }
      }) 
      
    );
  }
}
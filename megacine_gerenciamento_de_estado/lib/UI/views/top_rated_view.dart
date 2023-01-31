import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_view_model.dart';
import '../components/item_movie_builder.dart';

class ViewTopRatedMovies extends StatelessWidget {
  const ViewTopRatedMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<AppViewModel>(
      builder: ((context, viewModel, child) {
        if (viewModel.listTopRated.isEmpty) {
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
                  final movie = viewModel.listTopRated[index];
                  return ItemMovieBuilder(context: context, movie: movie);
                })),
          );
        }
      }),
    );
  }
}


import 'package:flutter/material.dart';

import '../../data/models/movie_model.dart';

class ItemMovieBuilder extends StatelessWidget {
  const ItemMovieBuilder({
    Key? key,
    required this.context,
    required this.movie,
  }) : super(key: key);

  final BuildContext context;
  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Image.network(
            movie.imageUrl,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            movie.name,
            maxLines: 2,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

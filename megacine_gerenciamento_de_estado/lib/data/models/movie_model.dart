import 'package:megacine_gerenciamento_de_estado/resources/api_url.dart';

import 'i_movie.dart';

class MovieModel implements IMovie {
  MovieModel(
      {required this.name,
      required this.sinopse,
      required this.imageUrl,
      required this.id});

  @override
  final String name;
  @override
  final String sinopse;
  @override
  final String imageUrl;
  @override
  final int id;

  factory MovieModel.fromMap(Map<String, dynamic> data) {
    return MovieModel(
        id: data['id'],
        name: data['title'],
        imageUrl: "${APIUrls.imagemUrlBase}${data['poster_path']}",
        sinopse: data['overview']);
  }
}

import 'package:megacine_gerenciamento_de_estado/resources/api_url.dart';

class MovieModel {
  final String name;
  final String sinopse;
  final String imageUrl;

  MovieModel(
      {required this.name, 
      required this.sinopse, 
      required this.imageUrl
      });

  factory MovieModel.fromMap(Map<String, dynamic> data) {
    return MovieModel(
        name: data['title'],
        imageUrl: "${APIUrls.imagemUrlBase}${data['poster_path']}",
        sinopse: data['overview']);
  }
}

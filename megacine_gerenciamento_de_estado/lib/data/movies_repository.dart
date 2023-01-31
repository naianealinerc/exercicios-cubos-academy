import 'package:dio/dio.dart';
import 'package:megacine_gerenciamento_de_estado/data/models/movie_model.dart';
import 'package:megacine_gerenciamento_de_estado/resources/api_url.dart';

class MoviesRepository {
  final _dio = Dio();
  static String key = '9372b63bc013283e8e42a860446f6e57';

  

  Future<List<MovieModel>> getPopularMovies() async {
    try {
      final response = await _dio.get(
          "${APIUrls.urlBase}${APIUrls.popularUrl}?api_key=$key&language=pt-BR&page=1");
      return (response.data['results'] as Iterable)
          .map((map) => MovieModel.fromMap(map))
          .toList();
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception("Arquivo não encontrado");
      }
      throw e.error;
    }
  }

  Future<List<MovieModel>> getTopRatedMovies() async {
    try {
      final response = await _dio.get(
          "${APIUrls.urlBase}${APIUrls.topRatedUrl}?api_key=$key&language=pt-BR&page=1");
      return (response.data['results'] as Iterable)
          .map((map) => MovieModel.fromMap(map))
          .toList();
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception("Arquivo não encontrado");
      }
      throw e.error;
    }
  }

  Future<MovieModel> getDetails(int id) async {
    try {
      final response = await _dio
          .get("${APIUrls.urlBase}$id?api_key=$key&language=pt-BR&page=1");
      final MovieModel result = MovieModel.fromMap(response.data);
      return result;
    } on DioError catch (e) {
      if (e.response?.statusCode == 404) {
        throw Exception("Arquivo não encontrado");
      }
      throw e.error;
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:megacine_gerenciamento_de_estado/data/movies_repository.dart';
import 'package:megacine_gerenciamento_de_estado/data/models/movie_model.dart';

class AppViewModel extends ChangeNotifier {
  final _repository = MoviesRepository();

  List<MovieModel> _listPopularMovies = [];
  List<MovieModel> _listTopRatedMovies = [];

  void getPopularMovies() async {
    List<MovieModel> response = await _repository.getPopularMovies();
    _listPopularMovies = response;
    notifyListeners();
  }

  void getTopRatedMovies() async {
    List<MovieModel> response = await _repository.getTopRatedMovies();
    _listTopRatedMovies = response;
    notifyListeners();
  }

  void getDetails(int id) async {
    MovieModel response = await _repository.getDetails(id);
    notifyListeners();
  }

  List<MovieModel> get listPopular => [..._listPopularMovies];
  List<MovieModel> get listTopRated => [..._listTopRatedMovies];
}

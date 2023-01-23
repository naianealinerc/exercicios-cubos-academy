import 'package:flutter/cupertino.dart';
import 'package:megacine_gerenciamento_de_estado/data/movies_repository.dart';
import 'package:megacine_gerenciamento_de_estado/models/movie_model.dart';

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
    List<MovieModel> response = await _repository.getPopularMovies();
    _listTopRatedMovies = response;
    notifyListeners();
  }

  List<MovieModel> get listPopular => [..._listPopularMovies];
  List<MovieModel> get listTopRated => [..._listTopRatedMovies];


}

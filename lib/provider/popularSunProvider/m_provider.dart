import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/utilites/constant.dart';
import 'package:flutter_movie_app/models/movies/movie.dart';
import 'package:flutter_movie_app/models/movies/movie_result.dart';
import 'package:http/http.dart';

class PMProvider with ChangeNotifier {
  int _pageNum = 1;
  bool loadMore = false;
  List<Results> _movies = [];

  int get pageNum => _pageNum;

  List<Results> get movies => _movies;

  Future<String> getPMovies() async {
    try {
      Response r = await get(
        Uri.parse(
          '$MOVIE_BASE_URL$POPULAR$API_KEY$PAGES$_pageNum',
        ),
      );
      Movie m = Movie.fromJson(json.decode(r.body));
      if (_pageNum > 1) {
        _movies.addAll(m.results);
      } else {
        _movies = [];
        _movies.addAll(m.results);
      }      return SUCCESS;
    } catch (e) {
      return e.toString();
    }
  }

  Future<void> nextPage() async {
    loadMore = true;
    notifyListeners();
    _pageNum++;
    await getPMovies();
    loadMore = false;
    notifyListeners();
  }

  Future<void> reloadPage() async {
    _movies.clear();
    notifyListeners();
    _pageNum = 1;
    await getPMovies();
    notifyListeners();
  }
}

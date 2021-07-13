import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_movie_app/constant.dart';
import 'package:flutter_movie_app/models/movies/movie.dart';
import 'package:flutter_movie_app/models/movies/movie_result.dart';
import 'package:http/http.dart';

class NPMProvider with ChangeNotifier {
  int _pageNum = 1;
  List<Results> _movies;
  NetworkState _state;

  int get pageNum => _pageNum;

  List<Results> get movies => _movies;

  Future<void> getNPMovies({
    @required bool isPaging,
  }) async {
    if (!isPaging) {
      _state = NetworkState.WAITING;
    } else {
      _pageNum++;
      _state = NetworkState.PAGING;
      notifyListeners();
    }
    Response r = await get(
      Uri.parse(
        '$MOVIE_BASE_URL$NOW_PLAYING$API_KEY$PAGES$_pageNum',
      ),
    );
    print(r.request.url);
    if (r.statusCode >= 200 && r.statusCode < 300) {
      Movie m = Movie.fromJson(json.decode(r.body));
      if (_pageNum > 1) {
        _movies.addAll(m.results);
      } else {
        _movies = [];
        _movies.addAll(m.results);
      }
      _state = NetworkState.SUCCESS;
    } else {
      _state = NetworkState.ERROR;
    }
    notifyListeners();
  }

  Future<void> reloadPage() async {
    _movies.clear();
    notifyListeners();
    _pageNum = 1;
    await getNPMovies(isPaging: false);
    notifyListeners();
  }

  NetworkState get state => _state;
}

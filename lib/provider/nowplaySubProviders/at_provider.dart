import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/utilites/constant.dart';
import 'package:flutter_movie_app/models/series/series.dart';
import 'package:flutter_movie_app/models/series/series_result.dart';
import 'package:http/http.dart';

class ATSProvider with ChangeNotifier {
  int _pageNum = 1;
  List<Results> _series;
  NetworkState _state;

  int get pageNum => _pageNum;

  List<Results> get series => _series;

  Future<void> getATSeries({
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
        '$SERIES_BASE_URL$AIRING_TODAY$API_KEY$PAGES$_pageNum',
      ),
    );
    if (r.statusCode >= 200 && r.statusCode < 300) {
      Series s = Series.fromJson(json.decode(r.body));
      if (_pageNum > 1) {
        _series.addAll(s.results);
      } else {
        _series = [];
        _series.addAll(s.results);
      }
      _state = NetworkState.SUCCESS;
    } else {
      _state = NetworkState.ERROR;
    }
    notifyListeners();
  }

  NetworkState get state => _state;

  Future<void> reloadPage() async {
    _series.clear();
    notifyListeners();
    _pageNum = 1;
    await getATSeries(isPaging: false);
    notifyListeners();
  }
}

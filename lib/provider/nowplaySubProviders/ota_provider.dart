import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/utilites/constant.dart';
import 'package:flutter_movie_app/models/series/series.dart';
import 'package:flutter_movie_app/models/series/series_result.dart';
import 'package:http/http.dart';

class OTASProvider with ChangeNotifier {
  int _pageNum = 1;
  bool loadMore = false;
  List<Results> _series = [];
  int get pageNum => _pageNum;

  List<Results> get series => _series;

  Future<String> getOTASeries() async {
    try {
      Response r = await get(
        Uri.parse(
          '$SERIES_BASE_URL$ON_THE_AIR$API_KEY$PAGES$_pageNum',
        ),
      );
      Series s = Series.fromJson(json.decode(r.body));
      if (_pageNum > 1) {
        _series.addAll(s.results);
      } else {
        _series = [];
        _series.addAll(s.results);
      }      return SUCCESS;
    } catch (e) {
      return e.toString();
    }
  }

  Future<void> nextPage() async {
    loadMore = true;
    notifyListeners();
    _pageNum++;
    await getOTASeries();
    loadMore = false;
    notifyListeners();
  }

  Future<void> reloadPage() async {
    _series.clear();
    notifyListeners();
    _pageNum = 1;
    await getOTASeries();
    notifyListeners();
  }
}

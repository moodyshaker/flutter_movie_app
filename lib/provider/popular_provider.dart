import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/screens/fragment/popular_movies.dart';
import 'package:flutter_movie_app/screens/fragment/popular_series.dart';

class PopularProvider with ChangeNotifier{
  int _currentIndex = 0;
  Widget _currentWidget = PopularMovies();

  void setCurrentIndex(int i) {
    _currentIndex = i;
    setCurrentWidget();
    notifyListeners();
  }

  void setCurrentWidget() {
    switch (_currentIndex) {
      case 0:
        _currentWidget = PopularMovies();
        break;
      case 1:
        _currentWidget = PopularSeries();
        break;
    }
  }

  Widget get currentWidget => _currentWidget;

  int get currentIndex => _currentIndex;
}
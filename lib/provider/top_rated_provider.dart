import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/screens/fragment/top_rated_movies.dart';
import 'package:flutter_movie_app/screens/fragment/top_rated_series.dart';

class TopRatedProvider with ChangeNotifier {
  int _currentIndex = 0;
  Widget _currentWidget = TopRatedMovies();

  void setCurrentIndex(int i) {
    _currentIndex = i;
    setCurrentWidget();
    notifyListeners();
  }

  void setCurrentWidget() {
    switch (_currentIndex) {
      case 0:
        _currentWidget = TopRatedMovies();
        break;
      case 1:
        _currentWidget = TopRatedSeries();
        break;
    }
  }

  Widget get currentWidget => _currentWidget;

  int get currentIndex => _currentIndex;
}

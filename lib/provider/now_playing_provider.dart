import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/fragment/now_playing_airing_today.dart';
import 'package:flutter_movie_app/screens/fragment/now_playing_movie.dart';
import 'package:flutter_movie_app/screens/fragment/now_playing_on_the_air.dart';

class NowPlayingProvider with ChangeNotifier {
  int _currentIndex = 0;
  Widget _currentWidget = NowPlayingMovies();

  void setCurrentIndex(int i) {
    _currentIndex = i;
    setCurrentWidget();
    notifyListeners();
  }

  void setCurrentWidget() {
    switch (_currentIndex) {
      case 0:
        _currentWidget = NowPlayingMovies();
        break;
      case 1:
        _currentWidget = AiringToday();
        break;
      case 2:
        _currentWidget = OnTheAir();
        break;
    }
  }

  Widget get currentWidget => _currentWidget;

  int get currentIndex => _currentIndex;
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_movie_app/screens/now_playing.dart';
import 'package:flutter_movie_app/screens/popular.dart';
import 'package:flutter_movie_app/screens/settings.dart';
import 'package:flutter_movie_app/screens/top_rated.dart';
import 'package:flutter_movie_app/screens/upcoming.dart';

class HomeProvider with ChangeNotifier {
  Widget _currentWidget = NowPlaying();
  int _currentIndex = 0;

  void setIndex(int i) {
    _currentIndex = i;
    getCurrentWidget();
    notifyListeners();
  }

  void getCurrentWidget() {
    switch (_currentIndex) {
      case 0:
        _currentWidget = NowPlaying();
        break;
      case 1:
        _currentWidget = Popular();
        break;
      case 2:
        _currentWidget = TopRated();
        break;
      case 3:
        _currentWidget = Upcoming();
        break;
      case 4:
        _currentWidget = Settings();
        break;
    }
  }

  int get currentIndex => _currentIndex;

  Widget get currentWidget => _currentWidget;
}

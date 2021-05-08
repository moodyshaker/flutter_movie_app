import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_movie_app/provider/home_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, data, child) =>
          Scaffold(
            body: data.currentWidget,
            bottomNavigationBar: BottomNavigationBar(
              onTap: data.setIndex,
              currentIndex: data.currentIndex,
              items: [
                BottomNavigationBarItem(
                  label: 'Now Playing',
                  icon: Icon(
                    Icons.play_circle_filled_sharp,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Popular',
                  icon: Icon(
                    Icons.favorite,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Top Rated',
                  icon: Icon(
                    Icons.star,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Upcoming',
                  icon: Icon(
                    MaterialCommunityIcons.theater,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Settings',
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}

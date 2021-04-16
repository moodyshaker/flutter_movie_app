import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/home_provider.dart';
import 'package:provider/provider.dart';

import 'screens/about_app.dart';
import 'screens/home.dart';
import 'screens/splash.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // themeMode: Settings.isDark ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.indigo,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.indigo,
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
        )),
        initialRoute: Home.id,
        routes: {
          Splash.id: (context) => Splash(),
          Home.id: (context) => Home(),
          // MovieDetailsScreen.id: (context) => MovieDetailsScreen(),
          // SeriesDetailsScreen.id: (context) => SeriesDetailsScreen(),
          // Search.id: (context) => Search(),
          // AboutApp.id: (context) => AboutApp(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movie_app/provider/home_provider.dart';
import 'package:flutter_movie_app/provider/now_playing_provider.dart';
import 'package:flutter_movie_app/provider/nowplaySubProviders/at_provider.dart';
import 'package:flutter_movie_app/provider/popular_provider.dart';
import 'package:flutter_movie_app/provider/top_rated_provider.dart';
import 'package:flutter_movie_app/provider/upcoming_provider.dart';
import 'package:provider/provider.dart';
import 'provider/nowplaySubProviders/m_provider.dart';
import 'provider/nowplaySubProviders/ota_provider.dart';
import 'provider/popularSunProvider/m_provider.dart';
import 'provider/popularSunProvider/s_provider.dart';
import 'provider/topratedSubProvider/m_provider.dart';
import 'provider/topratedSubProvider/s_provider.dart';
import 'screens/home.dart';
import 'screens/search.dart';
import 'screens/splash.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NowPlayingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TopRatedProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PopularProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NPMProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ATSProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => OTASProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PMProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PSProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TRMProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TRSProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UCProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // themeMode: Settings.isDark ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo,
          ),
          primaryColor: Colors.indigo,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
          ),
        ),
        darkTheme: ThemeData.dark().copyWith(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
          ),
        ),
        initialRoute: Splash.id,
        routes: {
          Splash.id: (context) => Splash(),
          Home.id: (context) => Home(),
          Search.id: (context) => Search(),
          // MovieDetailsScreen.id: (context) => MovieDetailsScreen(),
          // SeriesDetailsScreen.id: (context) => SeriesDetailsScreen(),
          // AboutApp.id: (context) => AboutApp(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_movie_app/models/profile_model.dart';

const String MOVIE_BASE_URL = 'https://api.themoviedb.org/3/movie/';
const String SERIES_BASE_URL = 'https://api.themoviedb.org/3/tv/';
const String API_KEY = 'api_key=9aeaa4994a27aedb991bf0bea7ee555b';
const String IMAGE_500 = 'https://image.tmdb.org/t/p/w500';
const String IMAGE_200 = 'https://image.tmdb.org/t/p/w200';
const String PAGES = '&page=';
const String NOW_PLAYING = 'now_playing?';
const String TOP_RATED = 'top_rated?';
const String POPULAR = 'popular?';
const String UPCOMING = 'upcoming?';
const String AIRING_TODAY = 'airing_today?';
const String ON_THE_AIR = 'on_the_air?';
const String SUCCESS = 'success';

enum NetworkState {
  SUCCESS,
  ERROR,
  PAGING,
  WAITING,
}

List<ProfileModel> profileItems = [
  ProfileModel(title: 'Account Information', icon: Icons.person_sharp, color: Colors.grey),
  ProfileModel(title: 'Favourite', icon: Icons.favorite, color: Colors.red),
  ProfileModel(title: 'Change Email', icon: Icons.email, color: Colors.purpleAccent),
  ProfileModel(title: 'Change Password', icon: Icons.lock, color: Colors.blue),
  ProfileModel(title: 'Dark Mode', icon: FontAwesome5.moon, color: Colors.black),
  ProfileModel(title: 'Language', icon: Icons.language, color: Colors.amber),
  ProfileModel(title: 'Logout', icon: SimpleLineIcons.logout, color: Colors.teal),
];

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/widgets/settings_item.dart';
import 'package:flutter_movie_app/widgets/user_favourite_item.dart';

import 'search.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // IconData loginIcon = SimpleLineIcons.login;

  @override
  Widget build(BuildContext context) {
    // final homeProvider = Provider.of<HomeProvider>(context);
    // final settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, Search.id),
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          )
        ],
        title: Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.indigo,
                        ),
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: FancyShimmerImage(
                            imageUrl:
                                'https://cdn.pixabay.com/photo/2016/08/29/08/55/work-1627703_960_720.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Hi, Ahmed Shaker',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'See your profile',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                        ),
                        child: Divider(
                          height: 2.0,
                          color: Colors.grey[500],
                          thickness: 1.0,
                        ),
                      ),
                      Row(
                        children: [
                          UserFavourite(
                            icon: Icons.remove_red_eye,
                            title: 'Seenlist',
                            onPress: () {},
                            itemsCount: 2,
                            iconColor: Colors.green[800],
                            titleColor: Colors.green[800],
                            itemCountColor: Colors.green[800],
                          ),
                          Container(
                            height: 100.0,
                            child: VerticalDivider(
                              width: 2.0,
                              color: Colors.black,
                              thickness: 1.0,
                            ),
                          ),
                          UserFavourite(
                            icon: Icons.favorite,
                            title: 'Wishlist',
                            onPress: () {},
                            itemsCount: 10,
                            iconColor: Colors.red[800],
                            titleColor: Colors.red[800],
                            itemCountColor: Colors.red[800],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // Row(
              //   children: [
              //     SettingItem(
              //       title: settingsProvider.logText,
              //       onPress: settingsProvider.firstTimeToggle,
              //       icon: settingsProvider.isFirstTime
              //           ? loginIcon = SimpleLineIcons.login
              //           : loginIcon = SimpleLineIcons.logout,
              //       titleColor: Colors.blue[800],
              //       iconColor: Colors.blue[800],
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Row(
              //   children: [
              //     SettingItem(
              //       title: data.isDark ? 'Dark Mode' : 'Light Mode',
              //       // cardBackground: data.isDark ? Colors.white : Colors.grey[500],
              //       onPress: () {
              //         data.isDarkTrigger();
              //       },
              //       icon: FontAwesome5.moon,
              //       titleColor: data.isDark ? Colors.white : Colors.black,
              //       iconColor: data.isDark ? Colors.white : Colors.black,
              //     ),
              //     SettingItem(
              //       title: 'About App',
              //       onPress: () {
              //         Navigator.pushNamed(
              //           context,
              //           AboutApp.id,
              //         );
              //       },
              //       icon: Icons.info_outline,
              //       titleColor: Colors.blueGrey,
              //       iconColor: Colors.blueGrey,
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

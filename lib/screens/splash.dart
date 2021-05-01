import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        milliseconds: 2000,
      ),
      () => Navigator.pushReplacementNamed(
        context,
        Home.id,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/movie_icon.png',
                width: 300.0,
                height: 300.0,
                fit: BoxFit.fill,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Shimmer.fromColors(
                  highlightColor: Colors.white,
                  baseColor: Colors.black,
                  child: Text(
                    'Movie DB',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 50.0,
                ),
                child: SpinKitDoubleBounce(
                  color: Colors.grey,
                  size: 30.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

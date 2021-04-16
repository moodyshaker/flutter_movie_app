import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
          seconds: 3,
        ),
            () => Navigator.pushReplacementNamed(context, Home.id));
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
                child: Text(
                  'Movie DB',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 100.0,
                ),
                child: SpinKitCubeGrid(
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

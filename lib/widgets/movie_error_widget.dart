import 'package:flutter/material.dart';

class MovieErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Network Error',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  const MovieErrorWidget();
}

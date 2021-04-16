import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  final bool isLoadingMore;

  LoadingContainer({@required this.isLoadingMore});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isLoadingMore ? 50.0 : 0.0,
      duration: Duration(
        milliseconds: 200,
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}

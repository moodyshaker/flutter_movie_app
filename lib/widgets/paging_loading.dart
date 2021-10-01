import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PagingLoading extends StatelessWidget {
  final bool isPaging;

  PagingLoading({
    @required this.isPaging,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: isPaging ? 60.0 : 0.0,
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Center(
        child: SpinKitThreeBounce(
          size: 30.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

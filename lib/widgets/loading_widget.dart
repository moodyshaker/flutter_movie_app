import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitDoubleBounce(
        color: color ?? Theme.of(context).primaryColor,
      ),
    );
  }

  const LoadingWidget({
    this.color,
  });
}

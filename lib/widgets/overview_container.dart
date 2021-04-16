import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
class OverviewContainer<T> extends StatelessWidget {
  final String overview;
  final bool isVisible;

  OverviewContainer({
    @required this.overview,
    @required this.isVisible,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: Text(
                'Overview',
                // style: headerStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: ExpandText(
                overview,
                maxLines: 2,
                textAlign: TextAlign.start,
                // style: contentStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Type typeOf<T>() => T;
}

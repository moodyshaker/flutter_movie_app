import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_movie_app/models/series/series_result.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:intl/intl.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../utilites/constant.dart';

class SeriesItem extends StatelessWidget {
  final Results item;
  Color _backgroundColor;
  Color _progressColor;

  SeriesItem({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    putColor();
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(
          6.0,
        ),
        child: Column(
          children: [
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
                child: FancyShimmerImage(
                  height: 220.0,
                  imageUrl: '$IMAGE_200${item.posterPath}',
                  boxFit: BoxFit.fill,
                  errorWidget: Image.asset(
                    'images/movie_icon.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        item.firstAirDate.isNotEmpty
                            ? DateFormat.yMMMd()
                                .format(DateTime.parse(item.firstAirDate))
                            : 'no date',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 12.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      CircularPercentIndicator(
                        radius: 35.0,
                        backgroundColor: _backgroundColor ?? Colors.white,
                        progressColor: _progressColor ?? Colors.red,
                        percent: item.voteAverage / 10,
                        center: Text(
                          '${item.voteAverage}',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void putColor() {
    int roundedValue = item.voteAverage.round();
    switch (roundedValue) {
      case 0:
        _backgroundColor = Colors.grey.withOpacity(0.4);
        _progressColor = Colors.grey;
        break;
      case 1:
        _backgroundColor = Colors.purple.withOpacity(0.4);
        _progressColor = Colors.purple;
        break;
      case 2:
        _backgroundColor = Colors.blueAccent.withOpacity(0.4);
        _progressColor = Colors.blueAccent;
        break;
      case 3:
        _backgroundColor = Colors.teal.withOpacity(0.4);
        _progressColor = Colors.teal;
        break;
      case 4:
        _backgroundColor = Colors.yellow.withOpacity(0.4);
        _progressColor = Colors.yellow;
        break;
      case 5:
        _backgroundColor = Colors.red.withOpacity(0.4);
        _progressColor = Colors.red;
        break;
      case 6:
        _backgroundColor = Colors.cyan.withOpacity(0.4);
        _progressColor = Colors.cyan;
        break;
      case 7:
        _backgroundColor = Colors.indigoAccent.withOpacity(0.4);
        _progressColor = Colors.indigoAccent;
        break;
      case 8:
        _backgroundColor = Colors.blueGrey.withOpacity(0.4);
        _progressColor = Colors.blueGrey;
        break;
      case 9:
        _backgroundColor = Colors.deepOrangeAccent.withOpacity(0.4);
        _progressColor = Colors.deepOrangeAccent;
        break;
      case 10:
        _backgroundColor = Colors.pink.withOpacity(0.4);
        _progressColor = Colors.pink;
    }
  }
}

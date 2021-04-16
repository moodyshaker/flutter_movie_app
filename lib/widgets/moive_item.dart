// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:intl/intl.dart';
// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import '../../constant.dart';
// import '../../models/movies/movie_result.dart';
//
// class MovieItem extends StatelessWidget {
//   final Results item;
//   final String progressText;
//   final double percentage;
//   final Function onPress;
//   Color _backgroundColor;
//   Color _progressColor;
//
//   MovieItem({
//     @required this.item,
//     @required this.percentage,
//     @required this.progressText,
//     @required this.onPress,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     putColor();
//     return GestureDetector(
//       onTap: onPress,
//       child: Container(
//         width: 180.0,
//         margin: EdgeInsets.all(6.0),
//         decoration: BoxDecoration(
//           color: Colors.black12,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         child: Stack(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                   flex: 7,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: FancyShimmerImage(
//                       imageUrl: '$IMAGE_200${item.posterPath}',
//                       boxFit: BoxFit.fill,
//                       errorWidget: Image.asset(
//                         'images/movie_icon.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 6.0,
//                     top: 4.0,
//                   ),
//                   child: Text(
//                     item.title,
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 16.0,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(
//                     left: 6.0,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         DateFormat.yMMMd().format(
//                           DateTime.parse(item.releaseDate),
//                         ),
//                         textAlign: TextAlign.start,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w800,
//                           fontSize: 12.0,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(bottom: 2.0, right: 2.0),
//                         child: CircularPercentIndicator(
//                           radius: 35.0,
//                           backgroundColor: _backgroundColor ?? Colors.white,
//                           progressColor: _progressColor ?? Colors.red,
//                           percent: percentage,
//                           center: Text(
//                             progressText,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void putColor() {
//     double value = double.parse(progressText);
//     int roundedValue = value.round();
//     switch (roundedValue) {
//       case 0:
//         _backgroundColor = Colors.grey.withOpacity(0.4);
//         _progressColor = Colors.grey;
//         break;
//       case 1:
//         _backgroundColor = Colors.purple.withOpacity(0.4);
//         _progressColor = Colors.purple;
//         break;
//       case 2:
//         _backgroundColor = Colors.blueAccent.withOpacity(0.4);
//         _progressColor = Colors.blueAccent;
//         break;
//       case 3:
//         _backgroundColor = Colors.teal.withOpacity(0.4);
//         _progressColor = Colors.teal;
//         break;
//       case 4:
//         _backgroundColor = Colors.yellow.withOpacity(0.4);
//         _progressColor = Colors.yellow;
//         break;
//       case 5:
//         _backgroundColor = Colors.red.withOpacity(0.4);
//         _progressColor = Colors.red;
//         break;
//       case 6:
//         _backgroundColor = Colors.cyan.withOpacity(0.4);
//         _progressColor = Colors.cyan;
//         break;
//       case 7:
//         _backgroundColor = Colors.indigoAccent.withOpacity(0.4);
//         _progressColor = Colors.indigoAccent;
//         break;
//       case 8:
//         _backgroundColor = Colors.blueGrey.withOpacity(0.4);
//         _progressColor = Colors.blueGrey;
//         break;
//       case 9:
//         _backgroundColor = Colors.deepOrangeAccent.withOpacity(0.4);
//         _progressColor = Colors.deepOrangeAccent;
//         break;
//       case 10:
//         _backgroundColor = Colors.pink.withOpacity(0.4);
//         _progressColor = Colors.pink;
//     }
//   }
// }

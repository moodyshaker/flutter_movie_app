// import 'package:flutter/material.dart';
// import '../../models/movies/movie.dart';
// import '../screens/movie_details_screen.dart';
// import 'moive_item.dart';
//
// class MovieListContainer extends StatelessWidget {
//   final bool isVisible;
//   final List<Results> list;
//   final String headTitle;
//
//   MovieListContainer({
//     @required this.isVisible,
//     @required this.list,
//     @required this.headTitle,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Visibility(
//       visible: isVisible,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(12.0),
//             child: Text(
//               headTitle,
//               // style: headerStyle,
//             ),
//           ),
//           Container(
//             height: 280.0,
//             child: ListView.builder(
//               padding: EdgeInsets.all(12.0),
//               scrollDirection: Axis.horizontal,
//               itemCount: list.length,
//               itemBuilder: (context, i) {
//                 return MovieItem(
//                   item: list[i],
//                   onPress: () {
//                     Navigator.pushReplacementNamed(
//                       context,
//                       MovieDetailsScreen.id,
//                       arguments: list[i],
//                     );
//                   },
//                   percentage: list[i].voteAverage / 10,
//                   progressText: '${list[i].voteAverage}',
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

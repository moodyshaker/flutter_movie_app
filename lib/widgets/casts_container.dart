// import 'package:flutter/material.dart';
//
// class CastContainer extends StatelessWidget {
//   final List<Cast> casts;
//   final Function onPress;
//   final bool isVisible;
//
//   CastContainer({
//     @required this.casts,
//     @required this.onPress,
//     @required this.isVisible,
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
//               'Casts',
//               // style: headerStyle,
//             ),
//           ),
//           Container(
//             height: 185.0,
//             child: ListView.builder(
//               padding: EdgeInsets.all(12.0),
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, i) => GestureDetector(
//                 onTap: onPress,
//                 child: Container(
//                   padding: EdgeInsets.all(8.0),
//                   width: 150.0,
//                   child: Column(children: [
//                     CircleAvatar(
//                       backgroundImage: NetworkImage(
//                         '$IMAGE_200${casts[i].profilePath}',
//                       ),
//                       radius: 50.0,
//                     ),
//                     SizedBox(
//                       height: 6.0,
//                     ),
//                     Text(
//                       casts[i].name,
//                     ),
//                     SizedBox(
//                       height: 6.0,
//                     ),
//                     Text(
//                       casts[i].character,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                   ]),
//                 ),
//               ),
//               itemCount: casts.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

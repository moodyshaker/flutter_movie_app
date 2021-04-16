// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// class CrewContainer extends StatelessWidget {
//   // final List<Crew> crews;
//   final Function onPress;
//   final bool isVisible;
//
//   CrewContainer({
//     @required this.crews,
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
//               'Crews',
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
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: crews[i].profilePath != null
//                             ? NetworkImage(''
//                                 // '$IMAGE_200${crews[i].profilePath}',
//                               )
//                             : AssetImage(
//                                 'images/actor.png',
//                               ),
//                         radius: 50.0,
//                       ),
//                       SizedBox(
//                         height: 6.0,
//                       ),
//                       Text(
//                         crews[i].name,
//                       ),
//                       SizedBox(
//                         height: 6.0,
//                       ),
//                       Text(
//                         crews[i].job,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: TextStyle(
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               itemCount: crews.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

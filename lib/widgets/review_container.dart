// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:provider/provider.dart';
//
// class ReviewContainer extends StatelessWidget {
//   final int reviews;
//   final Function onPressed;
//   final bool isVisible;
//
//   ReviewContainer({
//     @required this.reviews,
//     @required this.onPressed,
//     @required this.isVisible,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<SettingsProvider>(context);
//     return Visibility(
//       visible: isVisible,
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: 12.0,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 12.0,
//               ),
//               child: Text(
//                 'Review',
//                 // style: headerStyle,
//               ),
//             ),
//             GestureDetector(
//               onTap: onPressed,
//               child: Container(
//                 padding: EdgeInsets.all(12.0),
//                 margin: EdgeInsets.symmetric(
//                   vertical: 8.0,
//                 ),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: provider.isDark ? Colors.white : Colors.black54,
//                     width: 2.0,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '$reviews',
//                       // style: contentStyle,
//                     ),
//                     Icon(
//                       Icons.arrow_forward_ios,
//                       size: 20.0,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

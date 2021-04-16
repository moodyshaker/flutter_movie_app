// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class KeywordContainer extends StatelessWidget {
//   final List<KeywordResult> keywords;
//   final Function onPress;
//   final bool isVisible;
//
//   KeywordContainer({
//     @required this.keywords,
//     @required this.onPress,
//     @required this.isVisible,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<SettingsProvider>(context);
//     return Visibility(
//       visible: isVisible,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(12.0),
//             child: Text(
//               'Keywords',
//               // style: headerStyle,
//             ),
//           ),
//           Container(
//             height: 60.0,
//             child: ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, i) => GestureDetector(
//                 onTap: onPress,
//                 child: Container(
//                   margin: EdgeInsets.all(8.0),
//                   padding: EdgeInsets.all(8.0),
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: provider.isDark ? Colors.white : Colors.black54,
//                       width: 2.0,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Text(
//                     '${keywords[i].name}',
//                     style: TextStyle(
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ),
//               ),
//               itemCount: keywords.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

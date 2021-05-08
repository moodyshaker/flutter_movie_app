// import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class AboutApp extends StatelessWidget {
//   static const String id = 'about_app';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//               image: DecorationImage(
//             image: AssetImage('images/about_app.jpeg'),
//             fit: BoxFit.cover,
//           )),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage('images/movie_icon.png'),
//                   radius: 80.0,
//                   backgroundColor: Colors.transparent,
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(
//                     vertical: 10.0,
//                   ),
//                   child: Text(
//                     'MovieDB',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25.0,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 Divider(
//                   height: 10.0,
//                   thickness: 5.0,
//                   indent: 50.0,
//                   endIndent: 50.0,
//                   color: Colors.white,
//                 ),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 8.0),
//                   child: Text(
//                     'Contact Developer',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.w800,
//                     ),
//                   ),
//                 ),
//                 Divider(
//                   height: 10.0,
//                   thickness: 5.0,
//                   indent: 50.0,
//                   endIndent: 50.0,
//                   color: Colors.white,
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         launchSocial(
//                           'https://www.linkedin.com/in/ahmed-shaker-40a41995/',
//                         );
//                       },
//                       icon: Icon(
//                         Entypo.linkedin_with_circle,
//                         size: 50.0,
//                         color: linkedIn,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20.0,
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         launchSocial(
//                           'https://www.facebook.com/MoodyShakeer',
//                         );
//                       },
//                       icon: Icon(
//                         Entypo.facebook_with_circle,
//                         size: 50.0,
//                         color: facebook,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 20.0,
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         launchSocial('whatsapp://send?phone=+201018144255');
//                       },
//                       icon: Icon(
//                         FontAwesome.whatsapp,
//                         size: 50.0,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void launchSocial(String url) async {
//     await canLaunch(url) ? await launch(url) : print('can\'t launch it');
//   }
// }

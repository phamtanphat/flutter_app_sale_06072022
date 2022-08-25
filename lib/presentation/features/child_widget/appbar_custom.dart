
// import 'package:flutter/material.dart';
// mixin AppbarCustom on StatefulWidget {
//
//
//   @override
//   State<AppbarCustom> createState() => _AppbarCustomState();
// }
//
// class _AppbarCustomState extends State<AppbarCustom> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//
//   }
//   String? text ;
//   AppBar CustomAppBar() {
//
//     return AppBar(
//       backgroundColor: Colors.pink.shade400,
//       toolbarHeight: 100 ,
//       elevation: 14,
//       shape: const RoundedRectangleBorder(
//           borderRadius:  BorderRadius.only(
//               bottomRight: Radius.circular(70),
//               bottomLeft: Radius.circular(70))
//       ),
//       actions: [
//
//         Row(
//
//           children: [
//
//             Container(
//
//               height: 40,width: 40,
//
//               alignment: Alignment.center,
//
//               decoration: BoxDecoration(
//
//                   boxShadow: [
//
//                     BoxShadow(blurRadius: 7,spreadRadius: 3,
//
//                         color: Colors.pink
//
//                     )
//
//                   ],
//
//                   shape: BoxShape.circle,
//
//                   color: Colors.pink.shade400
//
//               ),
//
//               child: Icon(Icons.search,size: 20,
//
//               ),
//
//             ),
//
//             SizedBox(width: 10,),
//
//             Container(
//
//               height: 40,width: 40,
//
//               alignment: Alignment.center,
//
//               decoration: BoxDecoration(
//
//                   boxShadow: [
//
//                     BoxShadow(blurRadius: 7,spreadRadius: 3,
//
//                         color: Colors.pink
//
//                     )
//
//                   ],
//
//                   shape: BoxShape.circle,
//
//                   color: Colors.pink.shade400
//
//               ),
//
//               child: Icon(Icons.notifications,size: 20,
//
//               ),
//
//             ),
//
//             SizedBox(width: 10,),  Container(
//
//               height: 40,width: 40,
//
//               alignment: Alignment.center,
//
//               decoration: BoxDecoration(
//
//                   boxShadow: [
//
//                     BoxShadow(blurRadius: 7,spreadRadius: 3,
//
//                         color: Colors.pink
//
//                     )
//
//                   ],
//
//                   shape: BoxShape.circle,
//
//                   color: Colors.pink.shade400
//
//               ),
//
//               child: Icon(Icons.logout,size: 20,
//
//               ),
//
//             ),
//
//             SizedBox(width: 26,)
//
//           ],
//
//         )
//
//       ],
//       title: const Center(child: Text("Sign In")),
//     );
//   }
// }
//

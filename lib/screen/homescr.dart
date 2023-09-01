// import 'dart:async';
//
// import 'package:ecom_store/screen/admin_panel.dart';
// import 'package:ecom_store/screen/login_page.dart';
// import 'package:ecom_store/screen/registration.dart';
// import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       var token = GetStorage().read('token');
//
//       if (token == null || token == "") {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => Login_page()));
//       } else {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => Admin_Panel()));
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff4700A0),
//       body: Column(
//         //  crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//               height: 80,
//               width: 100,
//               decoration: BoxDecoration(
//                   //  color: Colors.red,
//                   image: DecorationImage(
//                       image: AssetImage("assets/image/shoping.png"),
//                       fit: BoxFit.contain)),
//             ),
//           ),
//           Column(
//             children: [
//               Text(
//                 "ECOM STORE",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 27,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 "buy sell anything in this ap",
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

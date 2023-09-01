// import 'package:ecom_store/screen/Category.dart';
// import 'package:ecom_store/screen/Product.dart';
// import 'package:ecom_store/screen/login_page.dart';
// import 'package:ecom_store/services/service.dart';
// import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';
//
// class Admin_Panel extends StatefulWidget {
//   const Admin_Panel({super.key});
//
//   @override
//   State<Admin_Panel> createState() => _Admin_PanelState();
// }
//
// class _Admin_PanelState extends State<Admin_Panel> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Color(0xff4700A0),
//           title: Text("ADMIN PANEL",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                   color: Colors.white)),
//           actions: [
//             IconButton(
//                 onPressed: logOutOnClick,
//                 icon: Icon(
//                   Icons.logout,
//                   color: Colors.white,
//                 ))
//           ]),
//       body: FutureBuilder(
//         builder: (context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             var data = snapshot.data;
//             return Column(children: [
//               Container(
//                 height: 240,
//                 width: 365,
//                 decoration: BoxDecoration(
//                     color: Color(0xff4700A0),
//                     borderRadius:
//                         BorderRadius.vertical(bottom: Radius.circular(40))),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Column(children: [
//                     CircleAvatar(
//                       maxRadius: 53,
//                       backgroundColor: Colors.white,
//                       //  minRadius: 50,
//                       child: Container(
//                         width: 200,
//                         height: 100,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.white,
//                             image: DecorationImage(
//                                 image: AssetImage("assets/image/user.jpg"),
//                                 fit: BoxFit.fill)),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                       "Kishan Mangukiya",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 20),
//                     ),
//                     SizedBox(height: 3),
//                     Text(
//                       "kishanmangukiya@gmail.com",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ]),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           "Dashbord",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 19,
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         Category()));
//                           },
//                           child: Container(
//                             height: 110,
//                             width: 140,
//                             decoration: BoxDecoration(
//                                 color: Color(0xff4700A0),
//                                 borderRadius: BorderRadius.circular(17)),
//                             child: Center(
//                                 child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Category",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Text(
//                                   "${data!['category']}+",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 18),
//                                 ),
//                               ],
//                             )),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 50,
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (BuildContext context) =>
//                                         Product()));
//                           },
//                           child: Container(
//                             height: 110,
//                             width: 140,
//                             decoration: BoxDecoration(
//                                 color: Color(0xff4700A0),
//                                 borderRadius: BorderRadius.circular(17)),
//                             child: Center(
//                                 child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Product",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Text(
//                                   "${data!['product']}+",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 18),
//                                 ),
//                               ],
//                             )),
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ]);
//           } else {
//             return Center(
//               child: CircularProgressIndicator(
//                 color: Colors.deepPurple,
//               ),
//             );
//           }
//         },
//         future: API.adminDashboard(),
//       ),
//     );
//   }
//
//   void logOutOnClick() {
//     GetStorage().remove('token');
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => Login_page()));
//   }
// }

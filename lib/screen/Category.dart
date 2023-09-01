// import 'package:ecom_store/services/service.dart';
// import 'package:flutter/material.dart';
//
// class Category extends StatefulWidget {
//   const Category({super.key});
//
//   @override
//   State<Category> createState() => _CategoryState();
// }
//
// class _CategoryState extends State<Category> {
//   @override
//   Widget build(BuildContext context) {
//     print("category");
//     return Scaffold(
//       body: FutureBuilder(
//         builder: (context, AsyncSnapshot<dynamic> snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             var data = snapshot.data;
//             print(data);
//             return Column(children: [
//               Container(
//                 height: 115,
//                 width: 365,
//                 decoration: BoxDecoration(
//                     color: Color(0xff4700A0),
//                     borderRadius:
//                         BorderRadius.only(bottomRight: Radius.circular(40))),
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "All Category",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         CircleAvatar(
//                           minRadius: 18,
//                           backgroundColor: Colors.white,
//                           child: Container(
//                               height: 32,
//                               width: 32,
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: DecorationImage(
//                                       image:
//                                           AssetImage("assets/image/user.jpg"),
//                                       fit: BoxFit.cover))),
//                         )
//                       ]),
//                 ),
//               ),
//               Container(
//                 height: 620,
//                 // color: Colors.red,
//                 child: ListView.builder(
//                   padding: EdgeInsets.zero,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Container(
//                       width: 350,
//                       height: 96,
//                       //color: Colors.black12,
//                       margin: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
//                       child: Row(children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                     "${data[index]['image']}",
//                                   ),
//                                   fit: BoxFit.cover),
//                               color: Color(0xff4700A0),
//                               borderRadius: BorderRadius.circular(10)),
//                         ),
//                         SizedBox(width: 10),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "${data[index]['title']}",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w700),
//                             ),
//                             SizedBox(height: 3),
//                             Text(
//                               "${data[index]['createdAt'].split("T")[0]}",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               right: 10, bottom: 0, top: 0),
//                           child: Column(
//                               //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.delete,
//                                       color: Color(0xff4700A0)),
//                                 ),
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.favorite_border,
//                                       color: Color(0xff4700A0)),
//                                 ),
//                               ]),
//                         ),
//                       ]),
//                     );
//                   },
//                   itemCount: data.length,
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
//         future: API.adminCategory(),
//       ),
//     );
//   }
// }

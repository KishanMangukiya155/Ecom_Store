// import 'package:ecom_store/screen/login_page.dart';
// import 'package:flutter/material.dart';
//
// class Registration extends StatefulWidget {
//   const Registration({super.key});
//
//   @override
//   State<Registration> createState() => _RegistrationState();
// }
//
// class _RegistrationState extends State<Registration> {
//   final formkey = GlobalKey<FormState>();
//   final uname = TextEditingController();
//   final email = TextEditingController();
//   final pass = TextEditingController();
//   final cpass = TextEditingController();
//
//   bool passwordVisible = false;
//   bool c_pass = false;
//
//   @override
//   void initState() {
//     passwordVisible = false;
//     c_pass = false;
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff4700A0),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
//               child: Form(
//                 key: formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Center(
//                       child: Container(
//                         height: 80,
//                         width: 100,
//                         decoration: BoxDecoration(
//                             //  color: Colors.red,
//                             image: DecorationImage(
//                                 image: AssetImage("assets/image/shoping.png"),
//                                 fit: BoxFit.contain)),
//                       ),
//                     ),
//                     SizedBox(height: 30),
//                     TextFormField(
//                       controller: uname,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return "Enter User name";
//                         }
//                       },
//                       style: TextStyle(color: Colors.white),
//                       decoration: InputDecoration(
//                         focusColor: Colors.white,
//                         prefixIcon:
//                             Icon(Icons.person_add_alt, color: Colors.amber),
//                         enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(30)),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.white,
//                             ),
//                             borderRadius: BorderRadius.circular(30)),
//                         //  filled: true,
//                         contentPadding:
//                             EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                         //      hintText: 'username',
//                         label: Text("Name",
//                             style: TextStyle(color: Colors.yellow.shade300)),
//                         hintStyle: TextStyle(fontSize: 15, color: Colors.white),
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       //  keyboardType: TextInputType.number,
//                       validator: (value) {
//                         final bool emailValid = RegExp(
//                                 r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//                             .hasMatch(value!);
//                         if (!emailValid) {
//                           return "Enter email in this formate";
//                         } else {
//                           return null;
//                         }
//                       },
//                       style: TextStyle(color: Colors.white),
//                       controller: email,
//                       decoration: InputDecoration(
//                         focusColor: Colors.white,
//                         prefixIcon: Icon(Icons.mail, color: Colors.amber),
//                         enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(30)),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.white,
//                             ),
//                             borderRadius: BorderRadius.circular(30)),
//                         //  filled: true,
//
//                         contentPadding:
//                             EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                         label: Text("E-mail",
//                             style: TextStyle(color: Colors.yellow.shade300)),
//
//                         hintStyle: TextStyle(fontSize: 15, color: Colors.white),
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       validator: (value) {
//                         bool password = RegExp(
//                                 r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
//                             .hasMatch(value!);
//                         if (!password) {
//                           return "Enter password in proper way";
//                         } else {
//                           return null;
//                         }
//                       },
//                       style: TextStyle(color: Colors.white),
//                       controller: pass,
//                       obscureText: !passwordVisible,
//                       decoration: InputDecoration(
//                         focusColor: Colors.white,
//                         prefixIcon: Icon(Icons.lock, color: Colors.amber),
//                         enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(30)),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.white,
//                             ),
//                             borderRadius: BorderRadius.circular(30)),
//                         //  filled: true,
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               passwordVisible = !passwordVisible;
//                             });
//                           },
//                           icon: Icon(
//                               passwordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                               color: passwordVisible
//                                   ? Colors.white
//                                   : Colors.yellow),
//                         ),
//
//                         contentPadding:
//                             EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                         label: Text("password",
//                             style: TextStyle(
//                                 color: Colors
//                                     .yellow.shade400)), // hintText: 'password',
//                         hintStyle:
//                             TextStyle(fontSize: 15, color: Colors.white54),
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       validator: (value) {
//                         bool cpassword = RegExp(
//                                 r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
//                             .hasMatch(value!);
//                         if (value != pass.text) {
//                           return "Not match";
//                         } else if (!cpassword) {
//                           return "enter password";
//                         } else {
//                           return null;
//                         }
//                       },
//                       style: TextStyle(color: Colors.white),
//                       controller: cpass,
//                       obscureText: !c_pass,
//                       decoration: InputDecoration(
//                         focusColor: Colors.white,
//                         prefixIcon: Icon(Icons.lock, color: Colors.amber),
//                         enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(30)),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               color: Colors.white,
//                             ),
//                             borderRadius: BorderRadius.circular(30)),
//                         //  filled: true,
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               c_pass = !c_pass;
//                             });
//                           },
//                           icon: Icon(
//                               c_pass ? Icons.visibility : Icons.visibility_off,
//                               color: c_pass ? Colors.white : Colors.yellow),
//                         ),
//                         contentPadding:
//                             EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                         label: Text("confirm password",
//                             style: TextStyle(
//                                 color: Colors.yellow
//                                     .shade400)), //   hintText: 'confirm password',
//                         hintStyle:
//                             TextStyle(fontSize: 15, color: Colors.white54),
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide(color: Colors.grey),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         if (formkey.currentState!.validate()) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (BuildContext context) =>
//                                       Login_page()));
//                           // uname.clear();
//                           // email.clear();
//                           // pass.clear();
//                           // cpass.clear();
//                         } else {
//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                               duration: Duration(seconds: 3),
//                               content: Text("Enter Proper Data in Textfield")));
//                         }
//                       },
//                       child: Container(
//                         height: 50,
//                         width: 330,
//                         decoration: BoxDecoration(
//                             color: Colors.yellow.shade600,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Center(
//                           child: Text(
//                             "Registration",
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
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

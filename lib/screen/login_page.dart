// import 'package:ecom_store/screen/admin_panel.dart';
// import 'package:ecom_store/services/service.dart';
// import 'package:ecom_store/utils.dart';
// import 'package:flutter/material.dart';
//
// class Login_page extends StatefulWidget {
//   const Login_page({super.key});
//
//   @override
//   State<Login_page> createState() => _Login_pageState();
// }
//
// class _Login_pageState extends State<Login_page> {
//   final formkey = GlobalKey<FormState>();
//   final textEditingCtrUsername = TextEditingController();
//   final textEditingCtrPassword = TextEditingController();
//
//   bool passwordVisible = false;
//   bool isLoading = false;
//
//   @override
//   void initState() {
//     passwordVisible = false;
//
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppTheme.blue,
//       body: Stack(children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15),
//           child: Form(
//             key: formkey,
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Center(
//                 child: Container(
//                   height: 80,
//                   width: 100,
//                   decoration: BoxDecoration(
//                       //  color: Colors.red,
//                       image: DecorationImage(
//                           image: AssetImage("assets/image/shoping.png"),
//                           fit: BoxFit.contain)),
//                 ),
//               ),
//               SizedBox(height: 30),
//               TextFormField(
//                 controller: textEditingCtrUsername,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Enter User name";
//                   } else {
//                     return null;
//                   }
//                 },
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   focusColor: Colors.white,
//                   prefixIcon: Icon(Icons.person_add_alt, color: Colors.amber),
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                       borderRadius: BorderRadius.circular(30)),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.white,
//                       ),
//                       borderRadius: BorderRadius.circular(30)),
//                   //  filled: true,
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                   //      hintText: 'username',
//                   label: Text("username",
//                       style: TextStyle(color: Colors.yellow.shade300)),
//                   hintStyle: TextStyle(fontSize: 15, color: Colors.white),
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide(color: Colors.grey),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 //    keyboardType: TextInputType.number,
//                 // validator: (value) {
//                 //   bool password = RegExp(
//                 //           r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
//                 //       .hasMatch(value!);
//                 //   if (value != textEditingCtrPassword.text) {
//                 //     return "Enter Password";
//                 //   } else if (!password) {
//                 //     return "enter passwor";
//                 //   } else {
//                 //     return null;
//                 //   }
//                 // },
//                 style: TextStyle(color: Colors.white),
//                 controller: textEditingCtrPassword,
//                 obscureText: !passwordVisible,
//                 decoration: InputDecoration(
//                   focusColor: Colors.white,
//                   prefixIcon: Icon(Icons.lock, color: Colors.amber),
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                       borderRadius: BorderRadius.circular(30)),
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.white,
//                       ),
//                       borderRadius: BorderRadius.circular(30)),
//                   //  filled: true,
//
//                   contentPadding:
//                       EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                   // label: Text("Password",
//                   //     style: TextStyle(color: Colors.yellow.shade300)),
//                   labelText: "Password",
//                   labelStyle: TextStyle(color: Colors.yellow.shade300),
//                   hintStyle: TextStyle(fontSize: 15, color: Colors.white),
//                   suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           passwordVisible = !passwordVisible;
//                         });
//                       },
//                       icon: passwordVisible
//                           ? Icon(Icons.remove_red_eye_outlined)
//                           : Icon(Icons.visibility_off_outlined),
//                       color: passwordVisible ? Colors.white : Colors.amber),
//                   fillColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide(color: Colors.grey),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               GestureDetector(
//                 onTap: () async {
//                   FocusScope.of(context).unfocus();
//
//                   setState(() {
//                     isLoading = true;
//                   });
//
//                   bool isLogin = await API.adminLogin(
//                       textEditingCtrUsername.text, textEditingCtrPassword.text);
//
//                   if (isLogin) {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                             builder: (BuildContext context) => Admin_Panel()));
//                   } else {
//                     setState(() {
//                       isLoading = false;
//                     });
//
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         duration: Duration(seconds: 3),
//                         backgroundColor: Colors.white,
//                         content: Text("Invalid Login",
//                             style: TextStyle(color: Colors.red)),
//                       ),
//                     );
//                   }
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 330,
//                   decoration: BoxDecoration(
//                       color: Colors.yellow.shade600,
//                       borderRadius: BorderRadius.circular(30)),
//                   child: Center(
//                     child: Text(
//                       "Sign Up",
//                       style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ),
//         isLoading
//             ? Container(
//                 color: Colors.black.withOpacity(0.8),
//                 child: Center(
//                   child: CircularProgressIndicator(
//                     color: Colors.white,
//                   ),
//                 ),
//               )
//             : SizedBox()
//       ]),
//     );
//   }
// }

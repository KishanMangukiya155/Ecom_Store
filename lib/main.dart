import 'package:ecom_store/screen/Category.dart';
import 'package:ecom_store/screen/Product.dart';
import 'package:ecom_store/screen/admin_panel.dart';
import 'package:ecom_store/screen/homescr.dart';
//import 'package:ecom_store/screen/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff4700A0),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Product(),
    );
  }
}

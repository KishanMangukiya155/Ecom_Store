// import 'dart:convert';
// import 'package:get_storage/get_storage.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/product_model.dart';
//
// class API {
//   static const String _baseUrl = "https://ecom-project-kwdc.onrender.com";
//
//   static Future<bool> adminLogin(String username, String password) async {
//     var url = Uri.parse("$_baseUrl/admin/login");
//     Map<String, dynamic> body = {"email": username, "password": password};
//     http.Response response = await http.post(url,
//         body: jsonEncode(body), headers: {"Content-Type": "application/json"});
//     var responseData = jsonDecode(response.body);
//     if (responseData['status'] == 200) {
//       String token = responseData['access_token'];
//
//       GetStorage().write('token', token);
//
//       return true;
//     } else if (responseData['status'] == 401) {
//       return false;
//     }
//
//     return false;
//   }
//
//   static Future<Map<String, dynamic>> adminDashboard() async {
//     var url = Uri.parse("$_baseUrl/dashboard");
//
//     var token = "Bearer " + GetStorage().read('token');
//
//     http.Response response = await http.get(url, headers: {
//       "Content-Type": "application/json",
//       "Authorization": "$token"
//     });
//
//     var responseData = jsonDecode(response.body);
//     if (responseData['status'] == 200) {
//       return responseData['dashboard'];
//     } else {
//       return responseData['message'];
//     }
//   }
//
//   static Future<dynamic> adminCategory() async {
//     var url = Uri.parse("$_baseUrl/category/");
//
//     var token = "Bearer " + GetStorage().read('token');
//
//     http.Response response = await http.get(url, headers: {
//       "Content-Type": "application/json",
//       "Authorization": "$token"
//     });
//     var responseData = jsonDecode(response.body);
//     if (responseData['status'] == 200) {
//       return responseData['product'];
//     } else {
//       return responseData['message'];
//     }
//   }
//
//   static Future<dynamic> adminProduct() async {
//     var url = Uri.parse("$_baseUrl/product/");
//
//     var token = "Bearer" + GetStorage().read('token');
//     http.Response response = await http.get(url, headers: {
//       "Content-Type": "application/json",
//       "Authorization": "$token"
//     });
//     print(token);
//     var responseData = jsonDecode(response.body);
//     print("helloo");
//     if (responseData['status'] == 200) {
//       return responseData['product'];
//     } else {
//       print("object");
//       return responseData['message'];
//     }
//   }
//

class ProductServices {
  static Future<ProductModel?> getProduct() async {
    http.Response response = await http.get(
      Uri.parse("https://ecom-project-kwdc.onrender.com"),
    );
    print("response==${jsonDecode(response.body)}");

    if (response.statusCode == 200) {
      return productModelFromJson(response.body);
    } else {
      return null;
    }
  }
}

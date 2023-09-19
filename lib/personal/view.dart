// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl/intl.dart';
// import '../core/logic/firebase_notifications.dart';
// import '../core/logic/helper_methods.dart';
// import '../myMovies/view.dart';
//
//
// class PersonalView extends StatefulWidget {
//   const PersonalView({Key? key}) : super(key: key);
//
//   @override
//   State<PersonalView> createState() => _PersonalViewState();
// }
//
// class _PersonalViewState extends State<PersonalView> {
//   final phoneController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   bool isLoading = false;
//
//   login() async {
//     isLoading = true;
//     setState(() {});
//
//     final response = await Dio()
//         .post("https://thimar.amr.aait-d.com/public/api/login", data: {
//       "phone": phoneController.text,
//       "password": passwordController.text,
//       "device_token": "amr",
//       "type": Platform.operatingSystem,
//       "user_type": "client"
//     });
//     print(response.data);
//
//     isLoading = false;
//     setState(() {});
//     navigateTo(context, MyMoviesView());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login"),
//       ),
//       drawer: Drawer(),
//       body: Center(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextFormField(
//                 keyboardType: TextInputType.phone,
//                 maxLines: 1,
//                 controller: phoneController,
//                 decoration: InputDecoration(
//                     prefix: Icon(Icons.phone),
//                     border: OutlineInputBorder(),
//                     labelText: "phonenumber".tr()),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 keyboardType: TextInputType.visiblePassword,
//                 maxLines: 1,
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                     prefix: Icon(Icons.lock),
//                     border: OutlineInputBorder(),
//                     labelText: "password".tr()),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               isLoading
//                   ? Center(child: CircularProgressIndicator(),)
//                   : ElevatedButton(onPressed: () {
//                 // print(phoneController.text);
//                 // print(passwordController.text);
//                 // login();
//                 // createNotify();
//               }, child: Text("login".tr()))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/routes/routes.dart';
import 'package:mylogin/values/strings.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with Routes {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      getPages: screensList,
    );
  }
}

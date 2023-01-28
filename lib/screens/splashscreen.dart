import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/values/name_routes.dart';

import '../common_widegts/my_custom_decorations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: getBody(size),
    );
  }
  Widget getBody(Size size) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: size.height + 100,
        width: size.width,
        decoration: myRoundColorDecoration(),
        child: Column(
          children: [
            (50.0).verticalSpace,
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.login);
              }),
              text: "Go To Login Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.notifiscren);
              }),
              text: "Go To notifiscren Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.onlinewthbtn);
              }),
              text: "Go To onlinewthbtn Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
           MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.pinknotification);
              }),
              text: "Go To pinknotification Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.tripstartbtn);
              }),
              text: "Go To tripstartbtn Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
           
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.status);
              }),
              text: "Go To Status Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.wallet);
              }),
              text: "Go To Wallets Page",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.mapOne);
              }),
              text: "Go To MapOne",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.mapTwo);
              }),
              text: "Go To MapTwo",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            MyCustomBtn(
              onPressed: (() {
                Get.toNamed(NameRoutes.messge);
              }),
              text: "Go To Message",
              textStyle: TextStyle(fontSize: 20, color: Colors.white),
            ),
            
          ],
        ),
      ),
    );
  }
}

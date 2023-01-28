// import 'dart:ffi';
// import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/my_custom_decorations.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/screens/loginscreen.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/utilities/sizes.dart';
import 'package:mylogin/values/name_routes.dart';

import '../values/strings.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          //first rectangular image in background

          Positioned(
            child: Container(
              width: size.width,
              height: size.height + (size.height / 5.5 - 20),
              color: const Color(0xFF7FB77E),
            ),
          ),
          // Register text on stack
          Positioned(
            left: 26,
            top: 112,
            child: Text(
              Strings.register,
              style: mycustomTextstyle(
                  color: AppColors.white,
                  fontsize: 48,
                  fontweight: FontWeight.w700),
            ),
          ),
          //top right ellipse
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/ellipse3934.png",
              // height: 250,
              // width: 250,
            ),
          ),

          Positioned(
              left: 28,
              top: size.height * 0.30,
              child: Image.asset("assets/images/Ellipse 3936register.png")),
          Positioned(
              left: 1,
              top: size.height * 0.28,
              child: Image.asset("assets/images/Ellipse5 register.png")),
          //textfield container
          Positioned(
            top: size.height * 0.34,
            // height: screenheight-(screenheight/2),
            // bottom: s,
            child: Container(
              height: 700,
              width: size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: textfield(),
              ),
            ),
          ),
          circuleravatar(context)
        ],
      )),
    );
  }
}

class textfield extends StatefulWidget {
  const textfield({super.key});
  // Double size=350.0;
  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _obsecure = true;
  bool _obsecure1 = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (60.0).verticalSpace,
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            Strings.name,
            style: mycustomTextstyle(
                color: Colors.black, fontsize: 15, fontweight: FontWeight.w700),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: Strings.namehnt,
            hintStyle: mycustomTextstyle(
                color: AppColors.concolor,
                fontsize: 13,
                fontweight: FontWeight.w400),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            Strings.phonnumtxt,
            style: mycustomTextstyle(
                color: Colors.black, fontsize: 15, fontweight: FontWeight.w700),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: Strings.entrphonehnt,
            hintStyle: mycustomTextstyle(
                color: AppColors.concolor,
                fontsize: 13,
                fontweight: FontWeight.w400),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            Strings.ontimecodetxt,
            style: mycustomTextstyle(
                color: Colors.black, fontsize: 15, fontweight: FontWeight.w700),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: Strings.entrreceivcode,
            hintStyle: mycustomTextstyle(
                color: AppColors.concolor,
                fontsize: 13,
                fontweight: FontWeight.w400),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            Strings.creatpasstxt,
            style: mycustomTextstyle(
                color: Colors.black, fontsize: 15, fontweight: FontWeight.w700),
          ),
        ),
        TextFormField(
          obscureText: _obsecure1,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obsecure1 = !_obsecure1;
                  });
                },
                child:
                    Icon(_obsecure1 ? Icons.visibility : Icons.visibility_off)),
            hintText: Strings.typenewpass,
            hintStyle: mycustomTextstyle(
                color: AppColors.concolor,
                fontsize: 13,
                fontweight: FontWeight.w400),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            Strings.confpasstxt,
            style: mycustomTextstyle(
                color: Colors.black, fontsize: 15, fontweight: FontWeight.w700),
          ),
        ),
        TextFormField(
          obscureText: _obsecure,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obsecure = !_obsecure;
                  });
                },
                child:
                    Icon(_obsecure ? Icons.visibility : Icons.visibility_off)),
            hintText: Strings.retypepass,
            hintStyle: mycustomTextstyle(
                color: AppColors.concolor,
                fontsize: 13,
                fontweight: FontWeight.w400),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        (20.0).verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: register_button(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.havAccount,
              style:
                  mycustomTextstyle(fontsize: 12, fontweight: FontWeight.w600),
            ),
            TextButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const Login();
                  })));
                }),
                child: Text(
                  Strings.loginhere,
                  style: mycustomTextstyle(
                      color: Color(0xFF0000FF),
                      fontsize: 12,
                      fontweight: FontWeight.w600),
                ))
          ],
        ),
        (30.0).verticalSpace,
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextButton(
              onPressed: (() {}),
              child: const Text(
                Strings.help,
                style: TextStyle(color: Color(0xFF0000FF)),
              )),
        ]),
      ],
    );
  }
}

//circuler avatar function
Widget circuleravatar(context) {
  double screenheight = MediaQuery.of(context).size.height;
  double screenwidth = MediaQuery.of(context).size.width;
  return Positioned(
      top: screenheight * 0.27,
      left: 0,
      right: 0,
      child: Row(
        children: [
          const Spacer(),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
            child: const CircleAvatar(
              // backgroundImage: Icons.camera,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.camera_alt,
                color: Colors.black,
              ),
              radius: 60,
              // width: 20,
              // height: 20,
            ),
          ),
          const Spacer(),
        ],
      ));
}

//Register button
Widget register_button() {
  return MyCustomBtn(
    btnBgColor: AppColors.maincolor,
    onPressed: (() {
      Get.toNamed(NameRoutes.offlinehomescreen);
    }),
    text: Strings.register,
    textStyle: mycustomTextstyle(
        color: AppColors.white,
        fontweight: FontWeight.w700,
        fontsize: AppSizes.fontsize),
  );
}

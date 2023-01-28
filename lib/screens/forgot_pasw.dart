import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';
import '../common_widegts/my_custom_decorations.dart';
import '../utilities/sizes.dart';
import '../values/name_routes.dart';
import '../values/strings.dart';

class ForgtPass extends StatefulWidget {
  const ForgtPass({super.key});

  @override
  State<ForgtPass> createState() => _ForgtPassState();
}

class _ForgtPassState extends State<ForgtPass> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: SafeArea(
        //page main body with singlechildView
        child: SingleChildScrollView(
          // physics: ScrollPhysic,
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    //first rectangular image in background
                    Positioned(
                      child: Container(
                        width: size.width,
                        height: size.height,
                        color: const Color(0xFFB1D7B4),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/elipse.png",
                        // height: 250,
                        // width: 250,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 122,
                      child: Text(
                        Strings.forgtpass,
                        style: mycustomTextstyle(
                            color: AppColors.white,
                            fontsize: 36,
                            fontweight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                        left: 28,
                        top: size.height * 0.30,
                        child: Image.asset("assets/images/elipse1.png")),
                    Positioned(
                        left: 1,
                        top: size.height * 0.28,
                        child: Image.asset("assets/images/Ellipse2.png")),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 553,
                        width: size.width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Textfield(),
                        ),
                      ),
                    ),
                
                
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  final bool _obsecure = true;
  final bool _obsecure1 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (40.0).verticalSpace,
        //phone number text
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            Strings.phonnumtxt,
            style: mycustomTextstyle(
                fontweight: FontWeight.w700, color: Colors.black, fontsize: 18),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            suffixIcon: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: const Color(0xFFF7F6DC),
              child: TextButton(
                onPressed: (() {}),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, top: 0.0, bottom: 0.0),
                  child: Text(
                    Strings.getcod,
                    style: mycustomTextstyle(color: AppColors.concolor),
                  ),
                ),
              ),
            ),
            hintText: Strings.enterphon,
            hintStyle: mycustomTextstyle(
                fontsize: 13,
                fontweight: FontWeight.w400,
                color: AppColors.concolor),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Text(
            Strings.vercodetxt,
            style: mycustomTextstyle(
                fontweight: FontWeight.w700,
                color: AppColors.dividerColor,
                fontsize: 18),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: Strings.entverifycode,
            hintStyle: mycustomTextstyle(
                fontsize: 13,
                fontweight: FontWeight.w400,
                color: AppColors.concolor),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            Strings.newpasstxt,
            style: mycustomTextstyle(
                fontweight: FontWeight.w700,
                color: AppColors.dividerColor,
                fontsize: 18),
          ),
        ),
        TextFormField(
          obscureText: _obsecure1,
          decoration: InputDecoration(
            hintText: Strings.typenewpass,
            hintStyle: mycustomTextstyle(
                fontsize: 13,
                fontweight: FontWeight.w400,
                color: AppColors.concolor),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: Colors.black))
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 5),
          child: Text(
            Strings.confpasstxt,
            style: mycustomTextstyle(
                fontweight: FontWeight.w700,
                color: AppColors.dividerColor,
                fontsize: 18),
          ),
        ),
        TextFormField(
          obscureText: _obsecure,
          decoration: InputDecoration(
            hintText: Strings.retypepass,
            hintStyle: mycustomTextstyle(
                fontsize: 13,
                fontweight: FontWeight.w400,
                color: AppColors.concolor),
          ),
        ),
        (60.0).verticalSpace,
        SizedBox(
          height: 50,
          width: size.width - AppSizes.fifty,
          child: MyCustomBtn(
            btnBgColor: AppColors.maincolor,
            borderRadius: 10,
            onPressed: (() {
              Get.toNamed(NameRoutes.login);
            }),
            text: Strings.submit,
            textStyle: mycustomTextstyle(
              fontsize: AppSizes.fontsize,
              fontweight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        )
      ],
    );
  }
}

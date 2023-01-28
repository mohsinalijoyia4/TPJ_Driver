import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/values/name_routes.dart';

import '../common_widegts/my_custom_decorations.dart';

class Messge extends StatelessWidget {
  const Messge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 152,
          width: 324,
          color: Colors.black26,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  "Your Trip at the route number XXXX on the vehicle XXX is delayed ",
                  style: mycustomTextstyle(
                    fontsize: 20,
                    fontweight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: 100,
                  height: 40,
                  child: MyCustomBtn(
                    text: "Ok",
                    textStyle: mycustomTextstyle(fontsize: 20),
                    btnBgColor: AppColors.white,
                    borderRadius: 20,
                    onPressed: (() {
                      Get.toNamed(NameRoutes.splash);
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

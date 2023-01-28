import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import '../common_widegts/my_custom_decorations.dart';
import '../values/name_routes.dart';
import '../values/strings.dart';

class Homeoflin extends StatefulWidget {
  const Homeoflin({super.key});

  @override
  State<Homeoflin> createState() => _HomeoflinState();
}

class _HomeoflinState extends State<Homeoflin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: MyScaffold(
        appBar: appbar(size), //Drawer
        drawer: drawer(),
        //Bottum sheet of containser in which text and swipeable button is exists
        bottomSheet: Container(
          decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(style: BorderStyle.solid))),
          width: size.width,
          height: size.height / 3.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (35.0).verticalSpace,
                //Text for institute name
                institue(),
                (25.0).verticalSpace,
                //Text for company name
                companyname(),
                (35.0).verticalSpace,
                //swipeable Buttom
                SwipingButton(
                    swipeButtonColor: const Color(0xFF7FB77E),
                    backgroundColor: const Color.fromARGB(255, 182, 216, 182),
                    height: 60,
                    text: Strings.swipetoonline,
                    onSwipeCallback: () {
                      Get.toNamed(NameRoutes.onlinehomescreen);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

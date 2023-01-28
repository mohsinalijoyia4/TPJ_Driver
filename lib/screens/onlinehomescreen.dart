import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/values/name_routes.dart';
import '../common_widegts/my_custom_decorations.dart';
import '../values/strings.dart';

class Onlinehomeone extends StatefulWidget {
  const Onlinehomeone({super.key});

  @override
  State<Onlinehomeone> createState() => _OnlinehomeoneState();
}

class _OnlinehomeoneState extends State<Onlinehomeone> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
        appBar: appbar(size),
        //Drawer
        drawer: drawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: body(),
        ),
        //Bottum sheet of containser in which text and swipeable button is exists
        bottomSheet: Container(
          decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(style: BorderStyle.solid))),
          width: size.width,
          height: size.height / 5.5,
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
              ],
            ),
          ),
        ));
  }

  Widget body() {
    return Column(
      children: [
        (20.0).verticalSpace,
        //right side padding for Today Button
        Padding(
          padding: const EdgeInsets.only(right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(Strings.todaydate),
              (10.0).verticalSpace,
              Icon(Icons.calendar_today),
              (10.0).verticalSpace,
              //today button container
              TodayBtn(
                onPressed: (() {
                  // Get.toNamed(NameRoutes.wallet);
                }),
              )
            ],
          ),
        ),
        (20.0).verticalSpace,
        //upcoming Text
        upComping(),
        (20.0).verticalSpace,
        //Notification text for your user's ride and route
        noticont(AppColors.concolor),
        (20.0).verticalSpace,
        //table container for Driver Route and Vehicle number
        tableContainer(),
      ],
    );
  }
}

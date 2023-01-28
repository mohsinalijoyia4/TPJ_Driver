import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/values/name_routes.dart';

import '../common_widegts/my_custom_decorations.dart';
import '../utilities/color.dart';
import '../values/strings.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
//table Rows of content

    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30.0,
          color: Color(0xFFFFC090),
        ),
        toolbarHeight: 180.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Stack(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: size.width / (size.height / 4.0),
            ),
            //Ad Banner Text
            Positioned(
              top: 50,
              right: 150,
              child: adbanertxt(),
            ),
            //Close Button
            Positioned(
              top: 110,
              right: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1.9,
                          spreadRadius: 1.9),
                    ],
                  ),
                  child: TextButton(
                      onPressed: (() {
                        Get.toNamed(NameRoutes.splash);
                      }),
                      child: Text(
                        "Close",
                        textAlign: TextAlign.center,
                        style: mycustomTextstyle(
                            fontsize: 16,
                            color: Colors.black,
                            fontweight: FontWeight.w500),
                      )),
                ),
              ),
            )
          ],
        ),
      ),

      //Drawer
      // drawer: drawer(),
      body: AspectRatio(
        aspectRatio: 4.4 / 3.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Heading Text Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Strings.timetxt,
                      style: mycustomTextstyle(fontweight: FontWeight.w600)),
                  Text(Strings.routetxt,
                      style: mycustomTextstyle(fontweight: FontWeight.w600)),
                  Text(Strings.vehicletxt,
                      style: mycustomTextstyle(fontweight: FontWeight.w600)),
                  Text(Strings.tripstatustxt,
                      style: mycustomTextstyle(fontweight: FontWeight.w600))
                ],
              ),
              (30.0).verticalSpace,
              clbtnconttxt(Strings.time, Strings.route, Strings.vehicle,
                  Strings.tripstatusC),
              (10.0).verticalSpace,
              clbtnconttxt(Strings.time, Strings.route, Strings.vehicle,
                  Strings.tripstatusP),
              (10.0).verticalSpace,
              clbtnconttxt(Strings.time, Strings.route, Strings.vehicle,
                  Strings.tripstatusP),
              (10.0).verticalSpace,
              clbtnconttxt(Strings.time, Strings.route, Strings.vehicle,
                  Strings.tripstatusP),
              (10.0).verticalSpace,
              clbtnconttxt(
                Strings.time,
                Strings.route,
                Strings.vehicle,
                Strings.tripstatusP,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

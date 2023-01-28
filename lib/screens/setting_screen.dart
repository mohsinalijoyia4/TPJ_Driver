import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/my_custom_decorations.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/values/name_routes.dart';

import '../utilities/color.dart';
import '../values/strings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SafeArea(
          child: Column(
        children: [
          (121.0).verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                Strings.settig,
                style: mycustomTextstyle(),
              )),
            ],
          ),
          (40.0).verticalSpace,
          Dividerhorizontal(
            thicknes: 0.5,
            colr: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.task_rounded),
                (10.0).horizantalSpace,
                TextButton(
                    onPressed: (() {}),
                    child: Text(Strings.tasksound,
                        style: mycustomTextstyle(fontweight: FontWeight.w600))),
              ],
            ),
          ),
          Dividerhorizontal(
            thicknes: 0.5,
            colr: Colors.black,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(NameRoutes.mapOne);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                  (10.0).horizantalSpace,
                  TextButton(
                      onPressed: (() {}),
                      child: Text(Strings.naviapp,
                          style:
                              mycustomTextstyle(fontweight: FontWeight.w600))),
                ],
              ),
            ),
          ),
          Dividerhorizontal(
            thicknes: 0.5,
            colr: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/clock_icon.png"),
                (20.0).horizantalSpace,
                TextButton(
                    onPressed: (() {}),
                    child: Text(Strings.clockopt,
                        style: mycustomTextstyle(fontweight: FontWeight.w600))),
              ],
            ),
          ),
          Dividerhorizontal(
            thicknes: 0.5,
            colr: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.logout,
                  size: 30,
                ),
                (10.0).horizantalSpace,
                TextButton(
                    onPressed: (() {}),
                    child: Text(Strings.logout,
                        style: mycustomTextstyle(
                            fontweight: FontWeight.w600,
                            color: AppColors.butoncolor))),
              ],
            ),
          ),
          Dividerhorizontal(
            thicknes: 0.5,
            colr: Colors.black,
          ),
        ],
      )),
    );
  }
}

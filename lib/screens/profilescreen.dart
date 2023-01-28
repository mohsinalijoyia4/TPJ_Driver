import 'package:flutter/material.dart';
import 'package:mylogin/common_widegts/my_custom_decorations.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';

import '../values/strings.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle() {
      return mycustomTextstyle(fontsize: 15,fontweight: FontWeight.w400,color: AppColors.dividerColor);
    }

    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            (110.0).verticalSpace,
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.avatarcolor,
              child: Icon(
                Icons.camera_alt,
                color: AppColors.dividerColor,
                size: 40,
              ),
            ),
            (110.0).verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.changName,
                  style: textStyle(),
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.dividerColor,
                )
              ],
            ),
            (60.0).verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.changfatherName,
                  style: textStyle(),
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.dividerColor,
                ),
              ],
            ),
            (60.0).verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.changaddress,
                  style: textStyle(),
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.dividerColor,
                ),
              ],
            ),
            (60.0).verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.digit4code,
                  style: textStyle(),
                ),
                Divider(
                  thickness: 1,
                  color: AppColors.dividerColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

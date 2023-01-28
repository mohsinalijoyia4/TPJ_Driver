import 'package:flutter/material.dart';

import '../utilities/color.dart';
import '../values/strings.dart';
import 'my_custom_decorations.dart';

SizedBox verticalSpace({double height = 20}) {
  return SizedBox(
    height: height,
  );
}

extension SizedBoxExtension on dynamic {
  SizedBox get horizantalSpace {
    return SizedBox(width: this as double);
  }

  SizedBox get verticalSpace {
    return SizedBox(height: this as double);
  }
}

class Dividerhorizontal extends StatelessWidget {
  Dividerhorizontal({super.key, this.thicknes = 0.5, this.colr = Colors.black});
  double thicknes;
  Color colr;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thicknes,
      color: colr,
    );
  }
}

class TodayBtn extends StatelessWidget {
  TodayBtn({this.onPressed, super.key});
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 1.9, spreadRadius: 1.9),
        ],
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            Strings.today,
            style: mycustomTextstyle(
                fontweight: FontWeight.w600, color: Colors.black, fontsize: 12),
          )),
    );
    
  }
}

class MyCustomBtn extends StatelessWidget {
  MyCustomBtn({
    Key? key,
    this.onPressed,
    this.text = "",
    this.textStyle = const TextStyle(),
    this.btnBgColor = Colors.black38,
    this.borderRadius = 10.0,
  }) : super(key: key);
  VoidCallback? onPressed;
  String text;
  TextStyle textStyle;
  Color btnBgColor;
  // RoundedRectangleBorder shape;
  double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          backgroundColor: btnBgColor),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
//  style: ElevatedButton.styleFrom(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       backgroundColor: AppColors.maincolor),

class MyScaffold extends StatelessWidget {
  final Widget? body,
      drawer,
      bottomNavigationBar,
      floatingActionButton,
      bottomSheet;
  final PreferredSizeWidget? appBar;
  final Color backgroundColor;
  final Key? scaffoldKey;
  final FloatingActionButtonLocation? floatingActionLocation;
  final bool extendBodyBehindAppBar, resizeToAvoidBottomInset;

  const MyScaffold({
    Key? key,
    this.body,
    this.drawer,
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionLocation,
    this.backgroundColor = Colors.white,
    this.scaffoldKey,
    this.bottomSheet,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: body,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: false,
      bottomSheet: bottomSheet,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionLocation,
    );
  }
}

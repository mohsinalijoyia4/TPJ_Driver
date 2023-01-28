import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/values/name_routes.dart';

import '../values/strings.dart';

BoxDecoration myRoundColorDecoration(
        {Color color = Colors.black12, double radius = 50}) =>
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
    );
Widget adbanertxt() {
  return Text(
    Strings.adbanner,
    style: mycustomTextstyle(
        fontsize: 18, fontweight: FontWeight.w700, color: AppColors.dividerColor,
    ),
  );
}

// //Custom btn with size color and txt color
Widget custoombtn(String str, Color btncolor, size, Color txtColor, onPressed) {
  return Center(
      child: Container(
    decoration: BoxDecoration(
        color: btncolor,
        // border: BorderRadius.circular(radius),
        borderRadius: BorderRadius.circular(10)),
    width: size.width - 80,
    child: TextButton(
        onPressed: (() {
          onPressed;
        }),
        child: Text(
          str,
          style: mycustomTextstyle(
              fontsize: 20, color: txtColor, fontweight: FontWeight.w500),
        )),
  ));
}

//custom btn with text and txt color
// Widget custombtn(String text, Color textcolor) {
//   return Container(
//     height: 50,
//     width: 110,
//     decoration:  BoxDecoration(
//       color: AppColors.white,
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(10),
//         topRight: Radius.circular(10),
//         bottomLeft: Radius.circular(10),
//         bottomRight: Radius.circular(10),
//       ),
//       boxShadow: [
//         BoxShadow(color: Colors.black26, blurRadius: 1.9, spreadRadius: 1.9),
//       ],
//     ),
//     child: TextButton(
//         onPressed: (() {}),
//         child: Text(
//           text,
//           textAlign: TextAlign.center,
//           style: mycustomTextstyle(
//               fontsize: 16, color: Colors.black, fontweight: FontWeight.w500),
//         )),
//   );
// }

//data Container for Driver Route Vehcle
Widget datacontainer() {
  return Container(
    height: 220,
    width: 350,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4, spreadRadius: 4),
      ],
    ),
    child: Column(
      children: [
        //header Row of trips detail container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.drivertxt,
                style: mycustomTextstyle(
                    fontsize: 16, fontweight: FontWeight.w600),
              ),
              Text(
                Strings.routetxt,
                style: mycustomTextstyle(
                    fontsize: 16, fontweight: FontWeight.w600),
              ),
              Text(
                Strings.vehicletxt,
                style: mycustomTextstyle(
                    fontsize: 16, fontweight: FontWeight.w600),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: row()),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: row()),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: row()),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: row()),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: row()),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ],
    ),
  );
}

//content Row
Row row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        Strings.ali,
        style: mycustomTextstyle(fontsize: 13, fontweight: FontWeight.w600),
      ),
      Text(
        Strings.route,
        style: mycustomTextstyle(fontsize: 13, fontweight: FontWeight.w600),
      ),
      Text(
        Strings.vnum,
        style: mycustomTextstyle(fontsize: 13, fontweight: FontWeight.w600),
      )
    ],
  );
}

//table for Driver name Route and vehicle number
Widget tableContainer() {
  return Container(
    height: 220,
    width: 350,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4, spreadRadius: 4),
      ],
    ),
    child: Column(
      children: [
        //header Row of trips detail container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.drivertxt,
                style: mycustomTextstyle(
                    fontsize: 16, fontweight: FontWeight.w600),
              ),
              Text(
                Strings.routetxt,
                style: mycustomTextstyle(
                    fontsize: 16, fontweight: FontWeight.w600),
              ),
              Text(
                Strings.vehicletxt,
                style: mycustomTextstyle(
                    fontsize: 16, fontweight: FontWeight.w600),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: tablerow(),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: tablerow(),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: tablerow(),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: tablerow(),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        // Divider(thickness: 2,color: Colors.black,),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: tablerow(),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
      ],
    ),
  );
}

// txt for each row of table of driver route vehicle
Widget tablerow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        Strings.ali,
        style: mycustomTextstyle(fontsize: 13, fontweight: FontWeight.w600),
      ),
      Text(
        Strings.route,
        style: mycustomTextstyle(fontsize: 13, fontweight: FontWeight.w600),
      ),
      Text(
        Strings.vnum,
        style: mycustomTextstyle(fontsize: 13, fontweight: FontWeight.w600),
      )
    ],
  );
}

//green container for wallet screen's
Container greencont(Image icon, String txt) {
  return Container(
    height: 30,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      icon,
      (3.0).horizantalSpace,
      Text(
        txt,
        style: mycustomTextstyle(
            fontsize: 12, fontweight: FontWeight.w600, color: Colors.white),
      )
    ]),
  );
}

//notification with pink background
Widget noticont(Color color) {
  return Container(
    width: 300,
    height: 120,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(30),
      child: Text(
        Strings.strttriptxt,
        style: mycustomTextstyle(
            color: Colors.black, fontsize: 16, fontweight: FontWeight.w500),
      ),
    ),
  );
}

//today btn
// Container todybtn() {
//   return Container(
//     height: 30,
//     // width: ,
//     // color: Colors.white,
//     decoration: const BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(10),
//         topRight: Radius.circular(10),
//         bottomLeft: Radius.circular(10),
//         bottomRight: Radius.circular(10),
//       ),
//       boxShadow: [
//         BoxShadow(color: Colors.black26, blurRadius: 1.9, spreadRadius: 1.9),
//       ],
//     ),
//     child: TextButton(
//         onPressed: (() {}),
//         child: Text(
//           Strings.today,
//           style: mycustomTextstyle(
//               fontweight: FontWeight.w600, color: Colors.black, fontsize: 12),
//           // TextStyle(
//           //     fontFamily: "Quicksand",
//           //     fontWeight: FontWeight.w600,
//           //     fontSize: 12,
//           //     color: Colors.black),
//         )),
//   );

// }

//appbar with schedule btn and ad banner
AppBar appbar(Size size) {
  return AppBar(
    iconTheme: const IconThemeData(
      size: 30,
      color: Color(0xFFFFC090),
    ),
    toolbarHeight: 170,
    backgroundColor: Colors.white,
    elevation: 0,
    // iconTheme: Icon(Icons.menu),
    title: Stack(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width,
          height: size.height / 4,
        ),
        //Ad Banner Text
        Positioned(
          top: 50,
          right: 150,
          child: Text(
            Strings.adbanner,
            style: mycustomTextstyle(
                color: Colors.black, fontsize: 18, fontweight: FontWeight.w700),
          ),
        ),
        //Schedule Button
        Positioned(
          top: 120,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1.9,
                      spreadRadius: 1.9),
                ],
              ),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    Strings.schedule,
                    textAlign: TextAlign.center,
                    style: mycustomTextstyle(
                        color: Colors.black,
                        fontsize: 16,
                        fontweight: FontWeight.w500),
                  )),
            ),
          ),
        ),
      ],
    ),
  );
}

//drawer code
Widget drawer() {
  return Drawer(
    backgroundColor: Colors.black12,
    child: ListView(
      padding: const EdgeInsets.only(top: 20),
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
              // color: Colors.blue,
              ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(Icons.camera_alt_rounded),
              ),
              (10.0).verticalSpace,
              Text(
                Strings.nameuser,
                style: mycustomTextstyle(
                    color: Colors.white,
                    fontsize: 20,
                    fontweight: FontWeight.w700),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: (() {
            Get.toNamed(NameRoutes.profilescreen);
          }),
          child: ListTile(
            leading: Image.asset(
              width: 33.75,
              height: 31.5,
              "assets/images/profileicon.png",
              // height: 250,
              // width: 250,
            ),
            title: Text(
              Strings.profile,
              style: mycustomTextstyle(
                  color: AppColors.white,
                  fontsize: 18,
                  fontweight: FontWeight.w600),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Get.toNamed(NameRoutes.reportcreate);
          }),
          child: ListTile(
            leading: Image.asset(
                width: 36, height: 36, "assets/images/bi_clock-history .png"),
            title: Text(
              Strings.triphistory,
              style: mycustomTextstyle(
                  color: AppColors.white,
                  fontsize: 18,
                  fontweight: FontWeight.w600),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Get.toNamed(NameRoutes.walletscreen);
          }),
          child: ListTile(
            leading: Image.asset(
                width: 27, height: 27, "assets/images/walleticon.png"),
            title: Text(
              Strings.wallet,
              style: mycustomTextstyle(
                  color: AppColors.white,
                  fontsize: 18,
                  fontweight: FontWeight.w600),
            ),
          ),
        ),
        ListTile(
          leading:
              Image.asset(width: 33, height: 33, "assets/images/worldicon.png"),
          title: Text(
            Strings.language,
            style: mycustomTextstyle(
                color: AppColors.white,
                fontsize: 18,
                fontweight: FontWeight.w600),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Get.toNamed(NameRoutes.settingscreen);
          }),
          child: ListTile(
            leading: Image.asset(
                width: 36, height: 36, "assets/images/bytesize_settings.png"),
            title: Text(
              Strings.settig,
              style: mycustomTextstyle(
                  color: AppColors.white,
                  fontsize: 18,
                  fontweight: FontWeight.w600),
            ),
          ),
        ),
        ListTile(
          leading: Image.asset(
              width: 36,
              height: 36,
              "assets/images/clarity_help-info-solid.png"),
          title: Text(
            Strings.help,
            style: mycustomTextstyle(
                color: AppColors.white,
                fontsize: 18,
                fontweight: FontWeight.w600),
          ),
        ),
      ],
    ),
  );
}

//upcomingtxt
Text upComping() {
  return Text(
    Strings.upcoming,
    style: mycustomTextstyle(
        color: AppColors.dividerColor,
        fontsize: 25,
        fontweight: FontWeight.w500),
  );
}

//institue name
Text institue() {
  return Text(
    Strings.instituename,
    style: mycustomTextstyle(
      fontweight: FontWeight.w500,
      fontsize: 14,
      color: AppColors.dividerColor,
    ),
  );
}

//company text address
Text companyname() {
  return Text(
    Strings.instiaddress,
    style: mycustomTextstyle(
      fontsize: 15,
      fontweight: FontWeight.w700,
      color: AppColors.dividerColor,
    ),
  );
}

//page with close btn's content tables txt style
TextStyle mycustomTextstyle({
  double fontsize = 16.0,
  FontWeight fontweight = FontWeight.w700,
  Color color = AppColors.dividerColor,
}) {
  return GoogleFonts.quicksand(
      fontSize: fontsize, fontWeight: fontweight, color: color);
}

myBoldFont600({
  double fontsize = 16.0,
  Color color = Colors.black,
}) {
  return GoogleFonts.quicksand(
      fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);
}

//clbtn containers tex row
Row clbtnconttxt(String str1, String str2, String str3, String str4) {
  return Row(
    children: [
      Text(
        str1,
        style: mycustomTextstyle(
            color: str1 == Strings.tripstatusC
                ? AppColors.btnColorpdf
                : AppColors.dividerColor,
            fontsize: 13,
            fontweight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
      // tablerowtxt(str1, Colors.black, FontWeight.w400),
      (25.0).horizantalSpace,
      Text(
        str2,
        style: mycustomTextstyle(
            color: AppColors.dividerColor,
            fontsize: 13,
            fontweight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
      (25.0).horizantalSpace,
      Text(
        str3,
        style: mycustomTextstyle(
            color: AppColors.dividerColor,
            fontsize: 13,
            fontweight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
      (25.0).horizantalSpace,
      Text(
        str4,
        style: mycustomTextstyle(
            color: str4 == Strings.tripstatusC
                ? AppColors.btnColorpdf
                : Colors.black,
            fontsize: 13,
            fontweight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

//elevated card for tables heading in save pdf and Create Reporte screen
Card headingcard(
  Size size,
  String str1,
  String str2,
  String str3,
  String str4,
) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
        width: size.width,
        height: 60,
        decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.dividerColor),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(2.0, 1.0),
                blurRadius: 1,
                spreadRadius: 1.0,
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: headertxt(str1, str2, str3, str4)),
  );
}

//text for header Row with custom styling
Padding txt(String head) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Container(
      width: 70,
      child: Text(
        textAlign: TextAlign.center,
        head,
        style: mycustomTextstyle(fontsize: 13.0, fontweight: FontWeight.w600),
      ),
    ),
  );
}

//Header txt row
Row headertxt(String str1, String str2, String str3, String str4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      txt(str1),
      txt(str2),
      txt(str3),
      txt(str4),
    ],
  );
}

//date
Text date() {
  return Text(
    Strings.date,
    style: mycustomTextstyle(fontsize: 13.0, fontweight: FontWeight.w600),
  );
}

//data for table in pdf and create report pages
Widget datacont(size) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // date(),
        //Header of records
        // headingcard(size),
        (10.0).verticalSpace,
        //table content
        paddind(),
        Dividerhorizontal(
          thicknes: 0.5,
          colr: AppColors.dividerColor,
        ),
        paddind(),
        Dividerhorizontal(
          thicknes: 0.5,
          colr: AppColors.dividerColor,
        ),
        paddind(),
        Dividerhorizontal(
          thicknes: 0.5,
          colr: AppColors.dividerColor,
        ),
        paddind(),
        Dividerhorizontal(
          thicknes: 0.5,
          colr: AppColors.dividerColor,
        ),
        paddind(),
        Dividerhorizontal(
          thicknes: 0.5,
          colr: AppColors.dividerColor,
        ),
      ],
    ),
  );
}

//tablecontent with padding
Padding paddind() {
  return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.time,
            style:
                mycustomTextstyle(fontsize: 13.0, fontweight: FontWeight.w400),
          ),
          Text(
            Strings.route,
            style:
                mycustomTextstyle(fontsize: 13.0, fontweight: FontWeight.w400),
          ),
          Text(
            Strings.vehicle,
            style:
                mycustomTextstyle(fontsize: 13.0, fontweight: FontWeight.w400),
          ),
          SizedBox(
            width: 70,
            child: Text(
              textAlign: TextAlign.center,
              Strings.timebytime,
              style: mycustomTextstyle(
                  fontsize: 13.0, fontweight: FontWeight.w400),
            ),
          )
        ],
      ));
}

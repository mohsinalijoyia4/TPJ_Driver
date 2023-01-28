// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';

import '../common_widegts/my_custom_decorations.dart';
import '../utilities/sizes.dart';
import '../values/name_routes.dart';
import '../values/strings.dart';

class SavePDF extends StatefulWidget {
  const SavePDF({super.key});

  @override
  State<SavePDF> createState() => _SavePDFState();
}

class _SavePDFState extends State<SavePDF> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 30,
          color: AppColors.maincolor,
        ),
        toolbarHeight: 150,
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Stack(children: [
          SizedBox(
            height: 150,
            width: size.width,
          ),
          Positioned(
            top: 20,
            left: size.width / 3 - 30,
            child: Text(
              Strings.banner,
              style: mycustomTextstyle(
                    fontsize: 18,
                    color: AppColors.dividerColor,
                    fontweight: FontWeight.w600)
            ),
          ),
        ]),
      ),
      drawer: drawer(),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //name and ID Row
                nameRow(),
                //kisps address Row
                addressRow(),
                (20.0).verticalSpace,
                //Date Container
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingcard(
                            size,
                            Strings.scheduletimetxt,
                            Strings.routetxt,
                            Strings.vehicletxt,
                            Strings.startendtrip),
                        datacont(size),
                      ]),
                ),
                //Save PDF Button
                (50.0).verticalSpace,
              ],
            ),
            SizedBox(
              height: 50,
              width: size.width - 60,
              child: MyCustomBtn(
                btnBgColor: AppColors.btnColorpdf,
                onPressed: (() {
                  Get.toNamed(NameRoutes.pdfscreen);
                }),
                text: Strings.savetxtbtn,
                textStyle: mycustomTextstyle(
                  fontsize: AppSizes.fontsize,
                  fontweight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row addressRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(
        width: 170,
        child: Text(
          textAlign: TextAlign.start,
          Strings.kipsaddress,
          style: mycustomTextstyle(fontsize: 20, fontweight: FontWeight.w500),
        ),
      ),
    ]);
  }

  Padding nameRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.idName,
            style: mycustomTextstyle(fontsize: 20, fontweight: FontWeight.w600),
          ),
          Text(
            Strings.id,
            style: mycustomTextstyle(fontsize: 20, fontweight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

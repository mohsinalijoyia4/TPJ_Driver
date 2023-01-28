import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/values/name_routes.dart';

import '../common_widegts/my_custom_decorations.dart';
import '../utilities/sizes.dart';
import '../values/strings.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    Column bodycol(Size size) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //name and id Row
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Name txt
                    Text(
                      Strings.idName,
                      style: mycustomTextstyle(
                          fontweight: FontWeight.w600, fontsize: AppSizes.fontsize),
                    ),
                    //ID text
                    Text(
                      Strings.id,
                      style: mycustomTextstyle(
                          fontweight: FontWeight.w600, fontsize: AppSizes.fontsize),
                    ),
                  ],
                ),
              ),
              (20.0).verticalSpace,
              //Date Text
              date(),
              //Data Container
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                headingcard(size, Strings.scheduletimetxt, Strings.routetxt,
                    Strings.vehicletxt, Strings.startendtrip),

                datacont(size),
                //Date Text
                date(),
                //Header of records
                headingcard(size, Strings.scheduletimetxt, Strings.routetxt,
                    Strings.vehicletxt, Strings.startendtrip),
                datacont(size)
              ]),
              (40.0).verticalSpace,
            ],
          ),
          // custombtn(Strings.crereptxtbtn,Colors.white,)
          SizedBox(
            height: 50,
            width: size.width - 60,
            child: MyCustomBtn(
              btnBgColor: AppColors.btnColorpdf,
              onPressed: (() {
                Get.toNamed(NameRoutes.pdfscreen);
              }),
              text: Strings.crereptxtbtn,
              textStyle: mycustomTextstyle(
                fontsize: AppSizes.fontsize,
                fontweight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
          )
          // custoombtn(Strings.crereptxtbtn, Color(0xff7FB77E), size,
          //     Colors.white, (() {})),
        ],
      );
    }

    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30,
          color: AppColors.maincolor,
        ),
        toolbarHeight: 150,
        backgroundColor: AppColors.white,
        elevation: 0,
        // iconTheme: Icon(Icons.menu),
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
                  fontweight: FontWeight.w600,
                  color: AppColors.dividerColor),
            ),
          ),
          Positioned(
            top: 100,
            left: size.width / 3 - 40,
            child: Text(
              Strings.triphistory,
              style: mycustomTextstyle(
                  fontsize: 18,
                  fontweight: FontWeight.w600,
                  color: AppColors.dividerColor),
            ),
          ),
        ]),
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AspectRatio(
            aspectRatio: size.width / size.height, child: bodycol(size)),
      ),
    );
  }
}

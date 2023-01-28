import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import '../common_widegts/my_custom_decorations.dart';
import '../values/name_routes.dart';
import '../values/strings.dart';

class OnlineHomeTwo extends StatefulWidget {
  const OnlineHomeTwo({super.key});

  @override
  State<OnlineHomeTwo> createState() => _OnlineHomeTwoState();
}

class _OnlineHomeTwoState extends State<OnlineHomeTwo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MyScaffold(
      appBar: appbar(size), //Drawer
      drawer: drawer(),

      body: SizedBox(
        width: size.width,
        // color: Colors.black12,
        child: Column(
          children: [
            (5.0).verticalSpace,
            //right side padding for Today Button
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "09/11/2022",
                    style: TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  (10.0).verticalSpace,
                  const Icon(Icons.calendar_today),
                  const SizedBox(
                    width: 10,
                  ),
                  //today button container
                  TodayBtn(
                    onPressed: ((){
                      
                    }),
                  )
                ],
              ),
            ),
            (10.0).verticalSpace,
            //upcoming Text
            upComping(),
            (10.0).verticalSpace,
            //Notification text for your user's ride and route
            noticont(const Color(0xffADADAD)),
            (25.0).verticalSpace,
            //centeral container for record table
            datacontainer()
          ],
        ),
      ),
      // ,showNotifiDialog(),
      //Bottum sheet of containser in which text and swipeable button is exists
      bottomSheet: Container(
        decoration: const BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(style: BorderStyle.solid))),
        width: size.width,
        height: size.height / 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              //Text for institute name
              institue(),

              const SizedBox(
                height: 25,
              ),
              //Text for company name
              companyname(),
              (5.0).verticalSpace,

              SwipingButton(
                  swipeButtonColor: AppColors.butoncolor,
                  backgroundColor: const Color.fromARGB(255, 237, 177, 177),
                  height: 60,
                  text: Strings.swiptooflin,
                  buttonTextStyle: AppColors.butontextcolor,
                  onSwipeCallback: () {
                    Get.toNamed(NameRoutes.offlinehomescreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

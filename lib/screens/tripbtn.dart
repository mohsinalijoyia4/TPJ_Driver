import 'package:flutter/material.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import '../common_widegts/my_custom_decorations.dart';
import '../utilities/color.dart';
import '../utilities/sizes.dart';
import '../values/strings.dart';

class StartTrip extends StatefulWidget {
  const StartTrip({super.key});

  @override
  State<StartTrip> createState() => _StartTripState();
}

class _StartTripState extends State<StartTrip> {
  void showNotifiDialog(Size size) {
    showDialog(
        context: context,
        builder: (context) {
          return Stack(children: [
            Positioned(
              top: 265,
              child: SizedBox(
                height: 340,
                width: size.width,
                child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.timetxt,
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
                        (20.0).verticalSpace,

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.time,
                              style: mycustomTextstyle(
                                  fontsize: 13, fontweight: FontWeight.w400),
                            ),
                            Text(
                              Strings.route,
                              style: mycustomTextstyle(
                                  fontsize: 13, fontweight: FontWeight.w400),
                            ),
                            Text(
                              Strings.vehicle,
                              style: mycustomTextstyle(
                                  fontsize: 13, fontweight: FontWeight.w400),
                            )
                          ],
                        ),
                        (60.0).verticalSpace,
                        SizedBox(
                          height: 40,
                          width: size.width - 80,
                          child: MyCustomBtn(
                            btnBgColor: AppColors.btnColorpdf,
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            text: Strings.tripstart,
                            textStyle: mycustomTextstyle(
                              fontsize: AppSizes.fontsize,
                              fontweight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        (10.0).verticalSpace,
                        SizedBox(
                          height: 40,
                          width: size.width - 80,
                          child: MyCustomBtn(
                            btnBgColor: AppColors.delayColor,
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            text: Strings.tripdelay,
                            textStyle: mycustomTextstyle(
                              fontsize: AppSizes.fontsize,
                              fontweight: FontWeight.w500,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 250,
                        //   child: ElevatedButton(
                        //       style: ButtonStyle(
                        //           // maximumSize:,
                        //           backgroundColor: MaterialStateProperty.all(
                        //               AppColors.delayColor)),
                        //       onPressed: (() {
                        //         Navigator.pop(context);
                        //       }),
                        //       child: Text(
                        //         Strings.tripdelay,
                        //         style: mycustomTextstyle(
                        //           fontsize: 20,
                        //         ),
                        //       )),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MyScaffold(
      appBar: appbar(size),
      //Drawer
      drawer: drawer(),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //right side padding for Today Button
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(Strings.date),
                  (10.0).horizantalSpace,
                  const Icon(Icons.calendar_today),
                  (10.0).horizantalSpace,
                  //today button container
                  TodayBtn(),
                ],
              ),
            ),
            (20.0).verticalSpace,
            //upcoming Text
            upComping(),
            (20.0).verticalSpace,
            //Notification text for your user's ride and route
            noticont(AppColors.maincolor),
            (20.0).verticalSpace,
            //Start Trip Button
            SizedBox(
              height: 50,
              width: size.width - 60,
              child: MyCustomBtn(
                btnBgColor: AppColors.btnColorpdf,
                onPressed: (() {
                  showNotifiDialog(size);
                }),
                text: Strings.tripstart,
                textStyle: mycustomTextstyle(
                  fontsize: AppSizes.fontsize,
                  fontweight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ),
            ),
            (20.0).verticalSpace,
            datacontainer(),
            
          ],
        ),
      ),
      //Bottum sheet of containser in which text and swipeable button is exists
      bottomSheet: Container(
        decoration: const BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(style: BorderStyle.solid))),
        width: size.width,
        height: size.height / 7.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (25.0).verticalSpace,
              //Text for institute name
              institue(),
              (25.0).verticalSpace,
              //Text for company name
              companyname(),
            ],
          ),
        ),
      ),
    
    );
  }
}

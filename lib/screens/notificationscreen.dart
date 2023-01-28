import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mylogin/common_widegts/my_custom_decorations.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/screens/offlinehomescreen.dart';
import '../utilities/color.dart';
import '../values/strings.dart';

class Notifiscreen extends StatefulWidget {
  const Notifiscreen({super.key});

  @override
  State<Notifiscreen> createState() => _NotifiscreenState();
}

class _NotifiscreenState extends State<Notifiscreen> {
  void showNotifiDialog(size) {
    showDialog(
        context: context,
        builder: (context) {
          return Stack(children: [
            Positioned(
              top: 265,
              child: BackdropFilter(
                filter: ImageFilter.compose(
                    outer: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    inner: ImageFilter.blur(sigmaY: 1, sigmaX: 1)),
                child: SizedBox(
                  height: 340,
                  width: size.width,
                  child: AlertDialog(
                    backgroundColor: const Color(0xFFFFC090).withOpacity(0.1),
                    // Colors.transparent,
                    title: const Center(child: Text(Strings.notifi)),
                    content: Column(
                      children: [
                        (30.0).verticalSpace,
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            Strings.tripnotitxt,
                            style: mycustomTextstyle(
                                fontsize: 16,
                                fontweight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Center(
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: MyCustomBtn(
                            btnBgColor: AppColors.white,
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            text: Strings.ok,
                            textStyle:
                                mycustomTextstyle(color: Color(0xff696969)),
                          ),
                          // TextButton(
                          //     style: ButtonStyle(
                          //         // elevation: const MaterialStatePropertyAll(2),
                          //         shape: MaterialStatePropertyAll(
                          //             BeveledRectangleBorder(
                          //                 borderRadius:
                          //                     BorderRadius.circular(10))),
                          //         backgroundColor:
                          //             const MaterialStatePropertyAll(
                          //                 Colors.white)),
                          //     onPressed: (() {
                          //       Navigator.pop(context);
                          //     }),
                          //     child:Text(
                          //       Strings.ok,
                          //       style:mycustomTextstyle(color: Color(0xff696969))
                          //       // TextStyle(color: ),
                          //     )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]);
        });
  }

  void showModalBottomSheet(Size size, BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 400,
            width: size.width,
            color: Colors.black,
  // child: ,
          );
        });

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 30,
          color: AppColors.maincolor,
        ),
        toolbarHeight: 170,
        backgroundColor: AppColors.white,
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
                    fontsize: 18,
                    fontweight: FontWeight.w700,
                    color: Colors.black),
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
                      onPressed: (() {}),
                      child: Text(
                        Strings.schedule,
                        textAlign: TextAlign.center,
                        style: mycustomTextstyle(
                            fontsize: 16,
                            fontweight: FontWeight.w500,
                            color: Colors.black),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),

      //Drawer
      drawer: drawer(),

      body: scafbody(size),

      floatingActionButton: FloatingActionButton(onPressed: (() {
        showNotifiDialog(size);
      })),
      //Bottum sheet of containser in which text and swipeable button is exists
      bottomSheet:  Container(
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
      ),
    );
  }

  Widget scafbody(Size size) {
    return SizedBox(
      width: size.width,
      // color: Colors.black12,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(Strings.todaydate),
                (10.0).verticalSpace,
                const Icon(Icons.calendar_today),
                (10.0).verticalSpace,

                //today button container
                TodayBtn()
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //upcoming Text
            upComping(),
            (20.0).verticalSpace,
            //Notification text for your user's ride and route
            Container(
              width: 340,
              height: 300,
              decoration: BoxDecoration(
                color: AppColors.maincolor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 120,
                    color: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        Strings.strttriptxt,
                        style: mycustomTextstyle(
                            color: Colors.black,
                            fontsize: 16,
                            fontweight: FontWeight.w500),
                      ),
                    ),
                  ),
                  (20.0).verticalSpace,
                  Container(
                    width: 300,
                    height: 120,
                    color: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        Strings.strttriptxt,
                        style: mycustomTextstyle(
                            color: AppColors.dividerColor,
                            fontsize: 16,
                            fontweight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            (25.0).verticalSpace,
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/screens/offlinehomescreen.dart';

import '../common_widegts/my_custom_decorations.dart';
import '../values/strings.dart';

class Pinknotifi extends StatefulWidget {
  const Pinknotifi({super.key});

  @override
  State<Pinknotifi> createState() => _PinknotifiState();
}

class _PinknotifiState extends State<Pinknotifi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MyScaffold(
        // drawerEdgeDragWidth: 30,
        appBar: appbar(size),
        //Drawer
        drawer: drawer(),
        body: SizedBox(
          width: size.width,
          child: Column(
            children: [
              (20.0).verticalSpace,
              //right side padding for Today Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Strings.todaydate),
                  (10.0).horizantalSpace,
                  const Icon(Icons.calendar_today),
                  (10.0).horizantalSpace,
                  //today button container
                 TodayBtn()
              ],
              ),
              (20.0).verticalSpace,

              //upcoming Text
               upComping(),
              (10.0).verticalSpace,

              //Notification text for your user's ride and route
             noticont(Color(0xffFFC09080).withOpacity(0.5)),
              (25.0).verticalSpace,

              datacontainer()
            ],
          ),
        ),

        //Bottum sheet of containser in which text and swipeable button is exists
        bottomSheet: bottomsheet(size) ,
        );
  }

  Widget bottomsheet(Size size) {
    return  Container(
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
        );
  }
}

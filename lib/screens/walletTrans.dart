import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/values/name_routes.dart';

import '../common_widegts/my_custom_decorations.dart';
import '../values/strings.dart';

class Transation extends StatefulWidget {
  const Transation({
    super.key,
  });
  @override
  State<Transation> createState() => _TransationState();
}

class _TransationState extends State<Transation> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // print("Screenwidth = ${screenwidth}");
    return MyScaffold(
      drawer: drawer(),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 170,
        foregroundColor: const Color(0xffFFC090),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (10.0).verticalSpace,
            //avalaible balance Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Strings.avaibalance,
                    style: mycustomTextstyle(
                        color: Colors.black,
                        fontsize: 13,
                        fontweight: FontWeight.w500),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  Strings.balansheet,
                  style: mycustomTextstyle(
                      color: Colors.blue,
                      fontsize: 13,
                      fontweight: FontWeight.w500),
                )
              ],
            ),
            (10.0).verticalSpace,
            // Rs. 590 and eye icon row
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Strings.rs660,
                    style: mycustomTextstyle(
                        color: Colors.black,
                        fontsize: 20,
                        fontweight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                (5.0).horizantalSpace,
                const Icon(
                  CupertinoIcons.eye_slash,
                )
              ],
            ),
            (10.0).verticalSpace,

            //Add Money and withdraw Boxs Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //container for icon and text
                greencont(Image.asset("assets/images/addmoney.png"),
                    Strings.addmoney),
                (40.0).horizantalSpace,

                //container for icon and text
                greencont(
                    Image.asset(
                        height: 18,
                        width: 18,
                        color: Colors.white,
                        "assets/images/withdrawicon (2).png"),
                    Strings.withraw),
              ],
            ),
            //Horizontal divider Row
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    // indent: 20.0,
                    thickness: 1,
                  ),
                )
              ],
            ),
            //Below the Horizontal Transaction Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Strings.trans,
                    style: mycustomTextstyle(
                        color: Colors.black,
                        fontsize: 13,
                        fontweight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: (() {
                      Get.toNamed(NameRoutes.wallet);
                    }),
                    child: Text(
                      Strings.viewall,
                      style: mycustomTextstyle(
                          color: Colors.blue,
                          fontsize: 13,
                          fontweight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            //bilty transport row one
            biltyText(Strings.n500, Colors.black),
            //bilty transport row two
            biltyText(Strings.p1500, Colors.green),
            //bilty transport row three
            biltyText(Strings.n500, Colors.black),
          ],
        ),
      ),
    );
  }

//bilty text rows
  Row biltyText(price, color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(width: 150, child: Text(Strings.biltyno)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            price,
            style: mycustomTextstyle(
                color: color, fontsize: 12, fontweight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}

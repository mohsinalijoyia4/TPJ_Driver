import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import '../common_widegts/my_custom_decorations.dart';
import '../utilities/color.dart';
import '../values/name_routes.dart';
import '../values/strings.dart';

class MapTwo extends StatefulWidget {
  const MapTwo({super.key});

  @override
  State<MapTwo> createState() => _MapTwoState();
}

class _MapTwoState extends State<MapTwo> {
  static const CameraPosition _kgooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
       zoom: 14.0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: appbar(size),
      drawer: drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //advertisement block
            Container(
              color: Colors.black26,
              height: 100,
              width: size.width,
              child: Center(child: Text(
                Strings.advertis,
              style: mycustomTextstyle(fontsize: 15, fontweight: FontWeight.w700,color: Colors.black),)),
            ),
            //  AspectRatio(
            //   aspectRatio: size.height/ size.width,
            //   child: const GoogleMap(
            //     initialCameraPosition: _kgooglePlex,
            //   ),
            // ),
          ],
        ),
      ),
      bottomSheet: AspectRatio(
        aspectRatio: size.width / (size.height / 3.5),
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  institue(),
                  companyname(),
                  Text(
                    Strings.drivnameid,
                    style: mycustomTextstyle(
                        fontweight: FontWeight.w500,
                        fontsize: 14,
                        color: Colors.black),
                  ),
                  Text(
                    Strings.regno,
                    style: mycustomTextstyle(
                        fontweight: FontWeight.w500,
                        fontsize: 14,
                        color: Colors.black),
                  ),
                  Text(
                    Strings.routeno,
                    style: mycustomTextstyle(
                        fontweight: FontWeight.w700,
                        fontsize: 15,
                        color: Colors.black),
                  ),
                  (15.0).verticalSpace,
                  SwipingButton(
                      swipeButtonColor: AppColors.butoncolor,
                      backgroundColor: const Color.fromARGB(255, 237, 177, 177),
                      height: 60,
                      text: Strings.swiptoendtrip,
                      buttonTextStyle: AppColors.butontextcolor,
                      onSwipeCallback: () {
                        Get.toNamed(NameRoutes.offlinehomescreen);
                      })
                ]),
          ),
        ),
      ),
    );
  }
}

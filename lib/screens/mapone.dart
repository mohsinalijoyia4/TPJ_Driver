import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mylogin/common_widegts/widgets.dart';

import '../common_widegts/my_custom_decorations.dart';
import '../values/strings.dart';

class MapOne extends StatefulWidget {
  const MapOne({super.key});

  @override
  State<MapOne> createState() => _MapOneState();
}

class _MapOneState extends State<MapOne> {
  static final CameraPosition _kgooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.0);

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
            Container(
              color: Colors.black26,
              height: 100,
              width: size.width,
              child: Center(
                  child: Text(
                Strings.advertis,
                style: mycustomTextstyle(
                    fontsize: 15,
                    fontweight: FontWeight.w700,
                    color: Colors.black),
              )),
            ),
            // AspectRatio(
            //   aspectRatio: size.height/ size.width,
            //   child: GoogleMap(
            //     initialCameraPosition: _kgooglePlex,
            //   ),
            // ),
          ],
        ),
      ),
      bottomSheet: AspectRatio(
        aspectRatio: size.width / (size.height / 5),
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
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
                ]),
          ),
        ),
      ),
    );
  }
}

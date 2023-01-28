import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mylogin/common_widegts/my_custom_decorations.dart';
import 'package:mylogin/common_widegts/widgets.dart';
import 'package:mylogin/utilities/sizes.dart';
import '../utilities/color.dart';
import '../values/strings.dart';

class Wallet extends StatefulWidget {
  const Wallet({
    super.key,
  });
  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TabController tabController = TabController(length: 3, vsync: this);

    return MyScaffold(
      drawer: drawer(),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: AppSizes.tabHeight,
        foregroundColor: AppColors.maincolor,
        backgroundColor: AppColors.white,
      ),
      body: body(tabController, size),
    );
  }

  Widget body(TabController tabController, Size size) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          firstcontainer(size),
          (20.0).verticalSpace,
          tabbar(tabController, size),
          (20.0).verticalSpace,
          listbuilder(tabController)
        ],
      ),
    );
  }

  Padding thismonth(index) {
    if (index < 1) {
      return Padding(
        padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
        child: Text(
          "This Month",
          style: mycustomTextstyle(
            fontsize: 15,
            fontweight: FontWeight.w600,
          ),
        ),
      );
    }
    if (index == 2) {
      return Padding(
        padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
        child: Text("This November",
            style: mycustomTextstyle(
              fontsize: 15,
              fontweight: FontWeight.w600,
            )),
      );
    }
    return const Padding(
      padding: EdgeInsets.all(0.0),
      child: Text(""),
    );
  }

  Card listtile(index) {
    if (index < 1 ) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: ListTile(
          trailing: Text(
            Strings.p500coins,
            style: mycustomTextstyle(
                fontsize: 16,
                fontweight: FontWeight.w500,
                color: AppColors.adcolor),
          ),
          subtitle: const Text(Strings.time),
          title: const Text(Strings.biltyno),
          leading: Image.asset("assets/images/depositicon.png"),
        ),
      );
    }
    if (index == 1 ||index%2==0) {
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: ListTile(
          minVerticalPadding: 10,
          minLeadingWidth: 10,
          trailing: Text(
            Strings.n500coins,
            style: mycustomTextstyle(
              fontsize: 16,
              fontweight: FontWeight.w500,
            ),
          ),
          subtitle: const Text(Strings.time),
          title: const Text(Strings.biltyno),
          leading: Image.asset("assets/images/withdrawicon.png"),
        ),
      );
     
    }
    return  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: ListTile(
        trailing: Text(
          Strings.p500coins,
          style: mycustomTextstyle(
              fontsize: 16,
              fontweight: FontWeight.w500,
              color: AppColors.adcolor),
        ),
        subtitle: const Text(Strings.time),
        title: const Text(Strings.biltyno),
        leading: Image.asset("assets/images/depositicon.png"),
      ),
    );
   
  }

//listView builder for listing data in tiles
  Expanded listbuilder(TabController tabController) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      thismonth(index),
                      listtile(index)
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child: ListTile(
                      minVerticalPadding: 10,
                      minLeadingWidth: 10,
                      trailing: Text(
                        Strings.n500coins,
                        style: mycustomTextstyle(
                          fontsize: 16,
                          fontweight: FontWeight.w500,
                        ),
                      ),
                      subtitle: const Text(Strings.time),
                      title: const Text(Strings.biltyno),
                      leading: Image.asset("assets/images/withdrawicon.png"),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child: ListTile(
                      trailing: Text(
                        Strings.p500coins,
                        style: mycustomTextstyle(
                            fontsize: 16,
                            fontweight: FontWeight.w500,
                            color: AppColors.adcolor),
                      ),
                      subtitle: const Text(Strings.time),
                      title: const Text(Strings.biltyno),
                      leading: Image.asset("assets/images/depositicon.png"),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

//text style for tabbar
  TextStyle tabtxtStyle() {
    return mycustomTextstyle(
        color: Colors.black, fontsize: 16, fontweight: FontWeight.w700);
  }

//Tabbar elevated card
  Card tabbar(TabController tabController, Size size) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 1,
        child: Container(
          height: 50,
          width: size.width - 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            controller: tabController,
            tabs: const [
              Tab(
                // height: 50,
                child: Text(
                  Strings.all,
                  style: TextStyle(),
                ),
              ),
              Tab(
                child: Text(
                  Strings.withraw,
                  style: TextStyle(),
                ),
              ),
              Tab(
                //  labelColor: Colors.green[200],
                child: Text(
                  Strings.deposit,
                  // style: TextStyle(),
                ),
              ),
            ],
            indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50),
                color: Colors.green),
            labelPadding: const EdgeInsets.symmetric(horizontal: 5),
          ),
        ));
  }

//availbletxt
  Text available() {
    return Text(
      Strings.avaibalance,
      style: mycustomTextstyle(
          color: Colors.black, fontsize: 13, fontweight: FontWeight.w500),
      textAlign: TextAlign.left,
    );
  }

//this month button Dialog
  void showNotifiDialog(Size size) {
    showDialog(
        context: context,
        builder: (context) {
          return Stack(children: [
            Positioned(
              top: 265,
              child: SizedBox(
                height: 300,
                width: size.width,
                child: Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  // shadowColor: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          Strings.plselect,
                          style: mycustomTextstyle(
                              fontsize: 13,
                              fontweight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        (20.0).verticalSpace,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/thismonthicon.png"),
                              (10.0).horizantalSpace,
                              Text(
                                Strings.thmonth,
                                style: mycustomTextstyle(
                                    fontsize: 12,
                                    color: const Color(0xff7FB77E),
                                    fontweight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/lastmonth.png"),
                              10.0.horizantalSpace,
                              Text(
                                Strings.lastmonth,
                                style: mycustomTextstyle(
                                    fontsize: 12,
                                    color: const Color(0xff7FB77E),
                                    fontweight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/older.png"),
                              (10.0).horizantalSpace,
                              Text(
                                Strings.older,
                                style: mycustomTextstyle(
                                    fontsize: 12,
                                    color: const Color(0xff7FB77E),
                                    fontweight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        (60.0).verticalSpace,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]);
        });
  }

//First Card for content
  Card firstcontainer(Size size) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 3,
        child: Container(
          height: 270,
          width: size.width - 30,
          decoration: BoxDecoration(
              color: Colors.white,
              // border: BoxBord,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (10.0).verticalSpace,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: available(),
              ),
              //Rs 660 and Eye icon Row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Strings.rs660,
                      style: mycustomTextstyle(
                          fontsize: 20,
                          fontweight: FontWeight.w700,
                          color: Colors.black),
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
              //Row for green cards add money/withdraw money
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  greencont(Image.asset("assets/images/addmoney.png"),
                      Strings.addmoney),
                  (60.0).horizantalSpace,
                  greencont(
                      Image.asset(
                          height: 18,
                          width: 18,
                          color: Colors.white,
                          "assets/images/withdrawicon (2).png"),
                      Strings.withraw),
                ],
              ),
              //horizontal Divider
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Strings.trans,
                      style: mycustomTextstyle(
                          fontsize: 13,
                          color: Colors.black,
                          fontweight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      child: TextButton(
                        onPressed: (() {
                          showNotifiDialog(size);
                        }),
                        child: Row(
                          children: [
                            Text(
                              Strings.thmonth,
                              style: mycustomTextstyle(
                                  fontsize: 13,
                                  fontweight: FontWeight.w600,
                                  color: const Color(0xffFFC090)),
                            ),
                            const Icon(
                              CupertinoIcons.calendar,
                              size: 20,
                              color: Color(0xffFFC090),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Rs.2500 and Rs. 3000 Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Strings.rs2500,
                      style: mycustomTextstyle(
                          fontsize: 15,
                          fontweight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      Strings.rs3000,
                      style: mycustomTextstyle(
                          fontsize: 15,
                          fontweight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              //last Row of First container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Strings.totalwith,
                          style: mycustomTextstyle(
                              fontsize: 11,
                              fontweight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Strings.totaldepo,
                          style: mycustomTextstyle(
                              fontsize: 11,
                              fontweight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

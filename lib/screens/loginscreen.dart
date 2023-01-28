import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylogin/common_widegts/my_custom_decorations.dart';
import 'package:mylogin/utilities/color.dart';
import 'package:mylogin/utilities/sizes.dart';
import '../common_widegts/widgets.dart';
import '../values/name_routes.dart';
import '../values/strings.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: mainbody(context),
    );
  }
}

Widget mainbody(context) {
  Size size = MediaQuery.of(context).size;
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: size.width,
                  // print(${screenwidth});
                  child: Image.asset(
                    "assets/images/rectangle1.png",
                  ),
                ),
                //Login text on stack
                const Positioned(
                  left: 26,
                  top: 112,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      fontSize: 48,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/elipse.png",
                    // height: 250,
                    // width: 250,
                  ),
                ),
                Positioned(
                    left: 28,
                    top: size.height * 0.30,
                    child: Image.asset("assets/images/elipse1.png")),
                Positioned(
                    left: 1,
                    top: size.height * 0.28,
                    child: Image.asset("assets/images/Ellipse2.png"))
              ],
            ),
            //Text fields
            Container(
              height: size.height - 350,
              width: size.width,
              color: Colors.white,
              child: Column(
                children: [
                  const Textformfield(),
                  //Login _Button
                  SizedBox(
                    height: 50,
                    width: size.width - AppSizes.fifty,
                    child: loginButton(),
                  ),
                  //Don't have an account yet? text and Register  button Row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Strings.donthaveaccnt,
                        style: mycustomTextstyle(
                            fontsize: 15,
                            fontweight: FontWeight.w600,
                            color: AppColors.dividerColor),
                      ),
                      register(context)
                    ],
                  ),
                  //help bottum buttom
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: (() {}),
                            child: Text(
                              Strings.help,
                              style: TextStyle(color: AppColors.dartblue),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//Register here Button and text

Widget register(context) {
  return TextButton(
    onPressed: (() {
      Get.toNamed(NameRoutes.register);
    }),
    child: Text(Strings.reghere,
        style: mycustomTextstyle(
            fontsize: 15,
            color: Color(
              0xFF0000FF,
            ),
            fontweight: FontWeight.w500)),
  );
}

//loginButton Function
Widget loginButton() {
  return MyCustomBtn(
    btnBgColor: AppColors.maincolor,
    borderRadius: 10,
    onPressed: (() {
      Get.toNamed(NameRoutes.offlinehomescreen);
    }),
    text: Strings.login,
    textStyle: mycustomTextstyle(
      fontsize: AppSizes.fontsize,
      fontweight: FontWeight.w700,
      color: AppColors.white,
    ),
  );
}

//Login Form Fields Class
class Textformfield extends StatefulWidget {
  const Textformfield({super.key});

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

//registerButtons
class _TextformfieldState extends State<Textformfield> {
  bool? throwShotAway = false;
  bool _obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.topPadding,
          right: AppSizes.topPadding,
          bottom: AppSizes.topPadding,
          top: AppSizes.topPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Phone number text
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              Strings.phonnumtxt,
              style: mycustomTextstyle(
                  color: AppColors.dividerColor,
                  fontsize: AppSizes.fontsize,
                  fontweight: FontWeight.w700),
            ),
          ),
          //phone number registerButtons
          TextFormField(
              decoration: const InputDecoration(
                hintText: Strings.enterphon,
              ),
              validator: (value) {
                if (value?.isEmpty != false) {
                  return Strings.uNamecantem;
                }
                return null;
              },
              onChanged: (value) {
                // name = value;
                setState(() {});
              }),
          //password text
          Padding(
            padding: EdgeInsets.only(top: 38, bottom: 10),
            child: Text(
              Strings.pasword,
              style: mycustomTextstyle(
                  color: AppColors.dividerColor,
                  fontsize: AppSizes.fontsize,
                  fontweight: FontWeight.w700),
            ),
          ),
          //registerButton of password
          TextFormField(
            obscureText: _obsecure,
            decoration: InputDecoration(
              hintText: Strings.entpass,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obsecure = !_obsecure;
                    });
                  },
                  child: Icon(
                      _obsecure ? Icons.visibility : Icons.visibility_off)),
              // labelText: "Password",
            ),
            validator: (value) {
              if (value?.isEmpty != false) {
                return Strings.passwCantEm;
              } else if (value != null && value.length < 6) {
                return Strings.passwCantLes;
              }
              return null;
            },
          ),
          //check box and Forgot Password RowS
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    visualDensity: VisualDensity.standard,
                    activeColor: Colors.grey,
                    // title: Text("Stay Login"),
                    value: throwShotAway,
                    onChanged: (bool? value) {
                      // print(value);
                      setState(() {
                        throwShotAway = value;
                      });
                    },
                  ),
                  const Text(Strings.stayLogin)
                ],
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(NameRoutes.forgtpas);
                  },
                  child: const Text(Strings.forgePass))
            ],
          ),
        ],
      ),
    );
  }
}

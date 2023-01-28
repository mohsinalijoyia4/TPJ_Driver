import 'package:get/get.dart';
import 'package:mylogin/screens/create_report.dart';
import 'package:mylogin/screens/forgot_pasw.dart';
import 'package:mylogin/screens/loginscreen.dart';
import 'package:mylogin/screens/maptwo.dart';
import 'package:mylogin/screens/notificationscreen.dart';
import 'package:mylogin/screens/offlinehomescreen.dart';
import 'package:mylogin/screens/onlinescreenwithbutton.dart';
import 'package:mylogin/screens/registerscreen.dart';
import 'package:mylogin/screens/splashscreen.dart';
import 'package:mylogin/screens/wallet.dart';

import '../screens/msg.dart';
import '../screens/statusScreen.dart';
import '../screens/MapOne.dart';
import '../screens/onlinehomescreen.dart';
import '../screens/pdfscreen.dart';
import '../screens/pinknotification.dart';
import '../screens/profilescreen.dart';
import '../screens/setting_screen.dart';
import '../screens/tripbtn.dart';
import '../screens/walletTrans.dart';
import '../values/name_routes.dart';

class Routes {
  List<GetPage> screensList = [
    GetPage(name: "/", page: () => const SplashScreen()),
    GetPage(name: NameRoutes.login, page: () => const Login()),
    GetPage(name: NameRoutes.register, page: () => const RegisterPage()),
    GetPage(name: NameRoutes.forgtpas, page: () => const ForgtPass()),
    GetPage(name: NameRoutes.reportcreate, page: () => const History()),
    GetPage(name: NameRoutes.notifiscren, page: () => const Notifiscreen()),
    GetPage(name: NameRoutes.offlinehomescreen, page: () => const Homeoflin()),
    GetPage(
        name: NameRoutes.onlinehomescreen, page: () => const Onlinehomeone()),
    GetPage(
        name: NameRoutes.onlinewthbtn, page: () => const OnlineHomeTwo()),
    GetPage(name: NameRoutes.pdfscreen, page: () => const SavePDF()),
    GetPage(name: NameRoutes.pinknotification, page: () => const Pinknotifi()),
    GetPage(name: NameRoutes.profilescreen, page: () => const Profile()),
    GetPage(name: NameRoutes.settingscreen, page: () => const Settings()),
    GetPage(name: NameRoutes.tripstartbtn, page: () => const StartTrip()),
    GetPage(name: NameRoutes.walletscreen, page: () => const Transation()),
    GetPage(name: NameRoutes.status, page: () => const Status()),
    GetPage(name: NameRoutes.wallet, page: () => const Wallet()),
    GetPage(name: NameRoutes.mapOne, page: () => const MapOne()),
    GetPage(name: NameRoutes.mapTwo, page: () => const MapTwo()),
    GetPage(name: NameRoutes.messge, page: () => const Messge()),
    GetPage(name: NameRoutes.splash, page: () => const SplashScreen()),
  ];
}

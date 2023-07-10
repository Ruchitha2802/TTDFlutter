import 'package:flutter/cupertino.dart';
import 'package:ttd_flutter_app/res/components/routes/app_routeconstants.dart';
import 'package:ttd_flutter_app/view/address_deatils/address_details.dart';
import 'package:ttd_flutter_app/view/bank_details/bank_details.dart';
import 'package:ttd_flutter_app/view/dashboard/dashboard.dart';
import 'package:ttd_flutter_app/view/digital_life_certificate/digital_life_certificate.dart';
import 'package:ttd_flutter_app/view/login/generate_mpin.dart';
import 'package:ttd_flutter_app/view/login/loginview.dart';
import 'package:ttd_flutter_app/view/login/otpview.dart';
import 'package:ttd_flutter_app/view/menubar/app_info.dart';
import 'package:ttd_flutter_app/view/menubar/privacy_policy.dart';
import 'package:ttd_flutter_app/view/payslip/payslip.dart';
import 'package:ttd_flutter_app/view/personal_deatils/personal_deatils.dart';
import '../../../view/login/validate_mpin.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRouteConstants.LoginView: ((context) => LoginView()),
      AppRouteConstants.OTPView: ((context) => OTPView()),
      AppRouteConstants.GenerateMPin: ((context) => GenerateMPin()),
      AppRouteConstants.DashboardView: ((context) => DashboardView()),
      AppRouteConstants.PersonalDetails: ((context) => PersonalDetails()),
      AppRouteConstants.BankDetails: ((context) => BankDeatils()),
      AppRouteConstants.AddressDetails: ((context) => AddressDetails()),
       AppRouteConstants.ValidateMpin: ((context) => Validate_Mpin()),
       AppRouteConstants.PrivacyPolicy: ((context) => PrivacyPolicy()),
       AppRouteConstants.AppInfo: ((context) => AppInfo()),
       AppRouteConstants.PaySlip: ((context) => PaySlip()),
        AppRouteConstants.DigitalLifeCertificate: ((context) => DigitalLifeCertificate()),
};
  }
}
/* final GoRouter _routes = GoRouter(
  initialLocation: AppRouteConstants.LoginView,
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const DashboardView(),
    ),
    GoRoute(
        path: AppRouteConstants.DashboardView,
        builder: (BuildContext context, GoRouterState state) {
          return  DashboardView();
        }),
    GoRoute(
      path: AppRouteConstants.LoginView,
      builder: (BuildContext context, GoRouterState state) {
        return  LoginView();
      },
    ),
    GoRoute(
      path:AppRouteConstants.OTPView,
      builder: (BuildContext context, GoRouterState state) {
        return  OTPView();
      },
    ),
  ],
);
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/settings",
      builder: (context, state) => const SettingsPage(),
    )
  ],
); */
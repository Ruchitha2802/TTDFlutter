import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/login_text_field.dart';
import 'package:ttd_flutter_app/res/components/routes/app_routeconstants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

TextEditingController _numberController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Container(
      color: AppColors.bg_color,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(1.0, 1.0), // shadow direction: bottom right
                )
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              height: 350,
              width: 370,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      ImageStrings.logo,
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Text(EnglishStrings.app_name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  LoginTextField(
                    hintText: EnglishStrings.ppo_request,
                    keyboardType: TextInputType.number,
                    labelText: EnglishStrings.ppo_no,
                    namecontroller: _numberController,
                  ),
                  LoginTextField(
                    hintText: EnglishStrings.mobile_request,
                    keyboardType: TextInputType.number,
                    labelText: EnglishStrings.Mobile_no,
                    namecontroller: _numberController,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouteConstants.OTPView);
                      },
                      child: Text(
                        EnglishStrings.otp_request,
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(200, 40)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(AppColors.dash_bg),
                          shape: MaterialStateProperty
                              .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: AppColors.dash_bg))))),
                ],
              )),
        ),
      ),
    ));
  }
}

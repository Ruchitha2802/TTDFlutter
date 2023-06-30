import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';

class GenerateMPin extends StatefulWidget {
  const GenerateMPin({super.key});

  @override
  State<GenerateMPin> createState() => _GenerateMPinState();
}

class _GenerateMPinState extends State<GenerateMPin> {
  TextEditingController _mpinController = TextEditingController();
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Container(
      color: AppColors.bg_color,
      child: Center(
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
            width: 380,
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
                
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30,
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: AppColors.dash_bg,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: true,
                    obscuringCharacter: '*',
                    // obscuringWidget: const FlutterLogo(
                    //   size: 24,
                    // ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      activeFillColor: AppColors.dash_bg,
                      activeColor: AppColors.dash_bg,
                      inactiveColor: AppColors.dash_bg,
                      inactiveFillColor: AppColors.bg_color,
                      selectedFillColor: AppColors.bg_color,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      //  activeFillColor: Colors.white,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    //  errorAnimationController: errorController,
                    controller: _mpinController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, bottom: 8.0, top: 0.0),
                      child: Text(
                        EnglishStrings.otp_resend,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      EnglishStrings.otp_validate,
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(250, 40)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppColors.dash_bg),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: AppColors.dash_bg))))),
              ],
            )),
      ),
    ));
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/custom_alerts/double_button_alert.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';
import 'package:ttd_flutter_app/res/components/routes/app_routeconstants.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(ImageStrings.sidebar),
                fit: BoxFit.fill,
              ),
            ),
            child: null,
          ),
          Column(
            children: [
              ListTile(
                splashColor: AppColors.dash_bg,
                leading: ImageIcon(
                  AssetImage(ImageStrings.dashboard),
                  color: Colors.black,
                  size: 24,
                ),
                title: const Text(
                  EnglishStrings.dashboard,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.of(context).pop();
                },
              ),
              ListTile(
                splashColor: AppColors.dash_bg,
                leading: ImageIcon(
                  AssetImage(ImageStrings.privacy_policy),
                  color: Colors.black,
                  size: 24,
                ),
                title: const Text(
                  EnglishStrings.Privacy_Policy,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, AppRouteConstants.PrivacyPolicy);
                },
              ),
              ListTile(
                splashColor: AppColors.dash_bg,
                leading: ImageIcon(
                  AssetImage(ImageStrings.app_info),
                  color: Colors.black,
                  size: 24,
                ),
                title: const Text(
                  EnglishStrings.App_Info,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, AppRouteConstants.AppInfo);
                },
              ),
              ListTile(
                splashColor: AppColors.dash_bg,
                leading: ImageIcon(
                  AssetImage(ImageStrings.exit),
                  color: Colors.black,
                  size: 24,
                ),
                title: const Text(
                  EnglishStrings.Exit,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return DoubleButtonAlert(
                        Buttontext1: EnglishStrings.yes,
                        Buttontext2: EnglishStrings.no,
                        descriptions: EnglishStrings.exit_question,
                        img: ImageStrings.alert_warning,
                        onButton1Pressed: () {
                          if (Platform.isAndroid) {
                            SystemNavigator.pop();
                          } else if (Platform.isIOS) {
                            exit(0);
                          }
                        },
                        onButton2Pressed: () {
                          Navigator.of(context).pop();
                        },
                        title: EnglishStrings.app_name,
                        version: '',
                      );
                    },
                  );
                  print("hello");
                },
              ),
              ListTile(
                splashColor: AppColors.dash_bg,
                leading: ImageIcon(
                  AssetImage(ImageStrings.logout),
                  color: Colors.black,
                  size: 24,
                ),
                title: const Text(
                  EnglishStrings.Logout,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return DoubleButtonAlert(
                        Buttontext1: EnglishStrings.yes,
                        Buttontext2: EnglishStrings.no,
                        descriptions: EnglishStrings.logout_question,
                        img: ImageStrings.alert_warning,
                        onButton1Pressed: () {
                          Navigator.of(context).pop();
                        },
                        onButton2Pressed: () {
                          Navigator.of(context).pop();
                        },
                        title: EnglishStrings.app_name,
                        version: '',
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

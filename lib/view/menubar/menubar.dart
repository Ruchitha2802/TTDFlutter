import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';

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
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("hello");
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
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("hello");
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
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("hello");
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
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                onTap: () {
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
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  print("hello");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/models/personal_details/personal_details_payload.dart';
import 'package:ttd_flutter_app/repository/personaldetails/personaldetails_repository.dart';

class PersonalDeatilsViewModel with ChangeNotifier {
  final _personalDeatilsRepo = PersonalDeatilsRepo();
  getPersonalDetailsvm(
      String appType,
      String confirmMpin,
      String ipAddress,
      String mobileNo,
      String mpin,
      String otpCode,
      int pensionerDetailsId,
      String pensionerTypeId,
      String ppoNo,
      BuildContext context) async {
    final payload = PensionerBasicDetailsPayload(
        appType: appType,
        confirmMpin: confirmMpin,
        ipAddress: ipAddress,
        mobileNo: mobileNo,
        mpin: mpin,
        otpCode: otpCode,
        pensionerDetailsId: pensionerDetailsId,
        pensionerTypeId: pensionerTypeId,
        ppoNo: ppoNo);
    final result = await _personalDeatilsRepo.getPersonalDetails(payload);
    print(result.status);
    //  notifyListeners();
   /*  if (result != null) {
      if (result.status == apiErrorCodes.status_true) {
        EasyLoading.dismiss();
        notifyListeners();
        return result;
      } else if (result.status == apiErrorCodes.status_false) {
        EasyLoading.dismiss();

        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (ctx) {
              return AlertWithSingleButton(
                Buttontext: AppStrings.MyGHMC_Ok,
                Img: AssetPath.alert_warning,
                descriptions: result.tag ?? "Invalid User Access",
                imagebg: null,
                onPressed: () {
                  Navigator.popUntil(
                      context, ModalRoute.withName(AppRoutes.dashboard));
                },
                title: 'GHMC',
                bgColor: AppColors.Button_red_color,
              );
            });
        notifyListeners();
      } else {
        EasyLoading.dismiss();
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (ctx) {
              return AlertWithSingleButton(
                Buttontext: AppStrings.MyGHMC_Ok,
                Img: AssetPath.alert_warning,
                descriptions: result.tag ?? "Invalid User Access",
                imagebg: null,
                onPressed: () {
                  Navigator.popUntil(
                      context, ModalRoute.withName(AppRoutes.dashboard));
                },
                title: 'GHMC',
                bgColor: AppColors.Button_red_color,
              );
            });
        notifyListeners();
      }
    } else {
      EasyLoading.dismiss();
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (ctx) {
            return AlertWithSingleButton(
              Buttontext: AppStrings.MyGHMC_Ok,
              Img: AssetPath.alert_warning,
              descriptions: AppStrings.Network_Busy_message,
              imagebg: null,
              onPressed: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(AppRoutes.dashboard));
              },
              title: 'GHMC',
              bgColor: AppColors.Button_red_color,
            );
          });
      notifyListeners();
    } */
  }
}

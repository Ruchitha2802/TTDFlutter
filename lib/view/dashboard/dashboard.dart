import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/appStrings/telugu_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/dashboard_text_view.dart';
import 'package:ttd_flutter_app/res/components/routes/app_routeconstants.dart';
import 'package:ttd_flutter_app/view/menubar/menubar.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      sidebarVis: true,
      Drawer: SideBar(),
      //leading: ,
      backgroundColor: true,
      AppBarvis: true,
      bottomSheetVis: true,
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Expanded(
          flex: 15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(EnglishStrings.Personal_Information,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              DashboardTextfield(
                title: EnglishStrings.Personal_Details,
                subtitle: TeluguStrings.Personal_Details,
                image: ImageStrings.personal_deatils,
                backgroundColor: AppColors.blue,
                routeName: AppRouteConstants.PersonalDetails,
              ),
              DashboardTextfield(
                title: EnglishStrings.Bank_Details,
                subtitle: TeluguStrings.Bank_Details,
                image: ImageStrings.Bank_deatils,
                backgroundColor: AppColors.green,
                routeName: AppRouteConstants.BankDetails,
              ),
              DashboardTextfield(
                title: EnglishStrings.Address_Details,
                subtitle: TeluguStrings.Address_Details,
                image: ImageStrings.address_deatils,
                backgroundColor: AppColors.pink,
                routeName: AppRouteConstants.AddressDetails,
              ),
              DashboardTextfield(
                title: EnglishStrings.Personal_IDs,
                subtitle: TeluguStrings.Personal_IDs,
                image: ImageStrings.personal_ids,
                backgroundColor: AppColors.purple,
              ),
              DashboardTextfield(
                title: EnglishStrings.Family_members,
                subtitle: TeluguStrings.Family_members,
                image: ImageStrings.family_deatils,
                backgroundColor: AppColors.amber,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(EnglishStrings.Payroll_service,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              DashboardTextfield(
                title: EnglishStrings.Pay_Slip,
                subtitle: TeluguStrings.Pay_Slip,
                image: ImageStrings.payslip,
                backgroundColor: AppColors.blue,
              ),
              DashboardTextfield(
                title: EnglishStrings.Digital_certificate,
                subtitle: TeluguStrings.Digital_certificate,
                image: ImageStrings.digital_certificate,
                backgroundColor: AppColors.green,
              ),
              DashboardTextfield(
                title: EnglishStrings.Pension_Details,
                subtitle: TeluguStrings.Pension_Details,
                image: ImageStrings.pension_deatils,
                backgroundColor: AppColors.pink,
              ),
              DashboardTextfield(
                title: EnglishStrings.pension_Eligible_Period,
                subtitle: TeluguStrings.pension_Eligible_Period,
                image: ImageStrings.pension_period,
                backgroundColor: AppColors.purple,
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:ttd_flutter_app/models/personal_details/personal_details_response.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/custom_alerts/single_button_alert.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/noneditable_text.dart';
import 'package:ttd_flutter_app/view_model/personal_deatils_viewmodel/personaldeatils_viewmodel.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

final Connectivity _connectivity = Connectivity();
pensionerBasicDetailsResponse? _basicDetailsResponse;

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        _fetchData();
      } else {
        _showNoInternetDialog();
      }

      _connectivity.onConnectivityChanged
          .listen((ConnectivityResult newResult) {
        setState(() {
       //   _connectionStatus = newResult;
        });

        if (newResult == ConnectivityResult.mobile ||
            newResult == ConnectivityResult.wifi) {
          _fetchData();
        } else {
          _showNoInternetDialog();
        }
      });
    });
    super.initState();
  }

  void _fetchData() async {
    final ProviderForPersonalDetails =
        Provider.of<PersonalDeatilsViewModel>(context, listen: false);
    EasyLoading.show(maskType: EasyLoadingMaskType.black, status: "Loading...");
    _basicDetailsResponse =
        await ProviderForPersonalDetails.getPersonalDetailsvm(
            "Mobile", "", "", "9704266654", "", "", 0, "", "966B", context);
    setState(() {});
    EasyLoading.dismiss();
  }

  void _showNoInternetDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertWithSingleButton(
          Buttontext: EnglishStrings.ok,
          Img: ImageStrings.alert_warning_yellow,
          descriptions: EnglishStrings.InterNet_check,
          imagebg: null,
          onPressed: () {
            Navigator.pop(context);
          },
          title: 'GHMC',
          bgColor: Colors.amber,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        isHome: true,
        leading: false,
        AppBarvis: true,
        backgroundColor: true,
        sidebarVis: false,
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'PPO No',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Employee No',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Name',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'pensionerSub Type',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Retirement Date',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Date of Birth',
              ),

              /*  LoginTextField(
                    hintText: EnglishStrings.ppo_request,
                    keyboardType: TextInputType.number,
                    labelText: EnglishStrings.ppo_no,
                    namecontroller: _numberController,
                  ), */
            ],
          ),
        ));
  }
}

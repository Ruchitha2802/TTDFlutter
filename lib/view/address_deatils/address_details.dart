import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/noneditable_text.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({super.key});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
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
                  labelText: EnglishStrings.careof,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.falt_no,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.addresslane1,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.addresslane2,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.vill_town_city,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.pincode,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.near_railway,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.near_airport,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.contact_no,
                ),
              ],
            )));
  }
}

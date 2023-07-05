import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/noneditable_text.dart';

class BankDeatils extends StatefulWidget {
  const BankDeatils({super.key});

  @override
  State<BankDeatils> createState() => _BankDeatilsState();
}

class _BankDeatilsState extends State<BankDeatils> {
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
                  labelText: EnglishStrings.payeeName,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.ifsc,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.acc_num,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.city,
                ),
                NonEditableTextField(
                  initialValue: '11111',
                  labelText: EnglishStrings.bank_country,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          EnglishStrings.is_joint_acc,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: 2,
                                  onChanged: (value) {},
                                ),
                                Text(EnglishStrings.yes),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: 2,
                                  onChanged: (value) {},
                                ),
                                Text(EnglishStrings.no),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    EnglishStrings.update_information,
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                  
                    minimumSize: Size(150, 50),
                  ),
                ),
                //Container with yes no radio buttons
              ],
            )));
  }
}

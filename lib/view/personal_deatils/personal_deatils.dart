import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/noneditable_text.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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

import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/noneditable_text.dart';

class DigitalLifeCertificate extends StatefulWidget {
  const DigitalLifeCertificate({super.key});

  @override
  State<DigitalLifeCertificate> createState() => _DigitalLifeCertificateState();
}

final List<String> years = [
  '2020-2021',
  '2021-2022',
  '2022-2023',
  '2023-2024',
  // Add more years as needed
];

String selectedYear = '2023-2024';

class _DigitalLifeCertificateState extends State<DigitalLifeCertificate> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        bottomSheetVis: true,
        AppBarvis: true,
        isHome: true,
        leading: false,
        sidebarVis: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Financial Year'),
                trailing: DropdownButton<String>(
                  value: selectedYear,
                   onChanged: (String? newValue) {
                    setState(() {
                      // Update selectedYear when dropdown value changes
                      selectedYear = newValue!;
                    });
                  },
                  items: years.map<DropdownMenuItem<String>>((String year) {
                    return DropdownMenuItem<String>(
                      value: year,
                      child: Text(year),
                    );
                  }).toList(),
                ),
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'PPO No',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Name',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Aadhaar Number',
              ),
              NonEditableTextField(
                initialValue: '11111',
                labelText: 'Current Status',
              ),
            ],
          ),
        ));
  }
}

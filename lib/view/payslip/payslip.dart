import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';

class PaySlip extends StatefulWidget {
  const PaySlip({super.key});

  @override
  State<PaySlip> createState() => _PaySlipState();
}

final List<String> years = [
  '2020-2021',
  '2021-2022',
  '2022-2023',
  '2023-2024',
  // Add more years as needed
];

String selectedYear = '2023-2024';

class _PaySlipState extends State<PaySlip> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      bottomSheetVis: true,
      AppBarvis: true,
      isHome: true,
      leading: false,
      sidebarVis: false,
      backgroundColor: true,
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
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
          ],
        ).toList(),
      ),

      /*  SingleChildScrollView(
          child: Column(
            children: [
             ListTile(
              leading: Text("Financial Year"),
              trailing: Text("2021-2022"),
             ) 
            ],
          ),

        ) */
    );
  }
}

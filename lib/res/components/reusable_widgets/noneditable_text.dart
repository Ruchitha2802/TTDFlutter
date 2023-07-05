import 'package:flutter/material.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';

class NonEditableTextField extends StatelessWidget {
  const NonEditableTextField(
      {super.key, required this.initialValue, required this.labelText});
  final String initialValue;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: TextFormField(
          initialValue: initialValue,
          enabled: false,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black, style: BorderStyle.solid)),
              labelText: labelText,
              labelStyle: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: AppColors.dash_bg
              )),
        ),
      ),
    );
  }
}

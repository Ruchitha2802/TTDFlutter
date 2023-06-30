import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.namecontroller,
      required this.keyboardType});
  final String hintText, labelText;
  final TextEditingController namecontroller;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20,bottom: 10),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: namecontroller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Color.fromARGB(255, 122, 90, 78)),
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 122, 90, 78))),
        ),
      ),
    );
  }
}

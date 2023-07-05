import 'package:flutter/material.dart';

class DashboardTextfield extends StatelessWidget {
  const DashboardTextfield(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      this.routeName,
      this.backgroundColor});
  final String title;
  final String subtitle;
  final String image;
  final String? routeName;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (routeName != null) {
          Navigator.pushNamed(context, routeName!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          // margin: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(18.0),
              ),
              side: BorderSide(
                  // border color
                  color: Colors.grey,
                  // border thickness
                  width: 1.0)),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: backgroundColor,
              child: CircleAvatar(
                radius: 23,
                backgroundColor: backgroundColor,
                child: Image.asset(
                  image,
                  width: 30,
                  height: 30,
                  color: Colors.white,
                  //fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

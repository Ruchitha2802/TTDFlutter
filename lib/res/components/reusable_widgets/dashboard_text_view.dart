import 'package:flutter/material.dart';

class DashboardTextfield extends StatelessWidget {
  const DashboardTextfield(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image, this.routeName});
  final String title;
  final String subtitle;
  final String image;
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
      },
      child: Padding(
        padding: const EdgeInsets.only( left: 10, right: 10),
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
              backgroundColor: Colors.green[900],
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.green[900],
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
              style: TextStyle(color: Colors.green[900], fontSize: 15),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(color: Colors.green[900], fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}

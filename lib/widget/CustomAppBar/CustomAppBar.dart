import 'package:flutter/material.dart';
import 'package:camerlearn/widget/Logout_popUp/Logout_popUp.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "CamerLearn",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8A2387),
              Color(0xFFE94057),
              Color(0xFFF27121),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 50.0),
          child: MaterialButton(
            color: Colors.pink,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Logout_popUp();
                },
              );
            },
            child: Text(
              "LogOut",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
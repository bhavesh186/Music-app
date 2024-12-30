import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomButtom extends StatelessWidget {
  var ontap;
  var btntext;
  var btncolor;
  var backgroundcolor;
  CustomButtom({super.key, required this.backgroundcolor, required this.btncolor, required this.btntext, required this.ontap});

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: ontap,
      child: Container(
        child: Center(child: Text(btntext, style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: btncolor,
        ),)),
        height: Height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundcolor,
        ),
      ),
    );
  }
}

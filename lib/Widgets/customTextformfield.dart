import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  var enablebordercolor;
  var desablebordercolor;
  var hinttext;
  var labletext;
  var sufixicon;
  var prefixicon;
  var ontap;
  var controller;
  CustomTextformfield({super.key, this.controller, this.hinttext, this.labletext, this.prefixicon, this.sufixicon, required this.ontap, this.desablebordercolor, this.enablebordercolor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: ontap,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: enablebordercolor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: desablebordercolor),
          ),
          suffixIcon: sufixicon,
          prefixIcon: prefixicon,
          hintText: hinttext,
          label: labletext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )
      ),
    );
  }
}

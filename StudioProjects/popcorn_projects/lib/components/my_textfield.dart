import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
final controller;
final String hintText;
final bool obscreText;


  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscreText,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText:  obscreText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),

          ),
          focusedBorder:  OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.grey.shade400),

          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color:  Colors.grey[500]),


        ),
      ),
    );
  }
}

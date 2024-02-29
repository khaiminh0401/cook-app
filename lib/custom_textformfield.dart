import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? obscureCharacter;
  final String labelText;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.obscureCharacter = '*',
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isObscureText!,
      obscuringCharacter: obscureCharacter!,
      style: TextStyle(fontSize: 14, color: Colors.black),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 12.0),
          constraints:
              BoxConstraints(maxHeight: height * 0.065, maxWidth: width - 30),
          filled: true,
          //color:
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 15),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                // color:
                width: 1.0,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                // color:
                width: 1.0,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                // color:
                width: 1.0,
              ))),
    );
  }
}

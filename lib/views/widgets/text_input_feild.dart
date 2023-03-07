import 'package:flutter/material.dart';
import 'package:vidvault/constants.dart';

class TextInputField extends StatelessWidget {

  // required variables to build the text field
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;

  const TextInputField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.icon,
    this.isObscure = false
  });

  
  
  
  // TODO: Need to figure out how to hide (or always show) labelText
  // when you click on the text field.
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.teal),
      controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: const TextStyle(color: Colors.teal),
        filled: true,
        fillColor: Colors.white,
        hintText: labelText,
        hintStyle: const TextStyle(color: Colors.teal),
        labelText: labelText, 
        prefixIcon: Icon(icon), 
        prefixIconColor: Colors.teal,
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderColor)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderColor)
        ),
      ),

      obscureText: isObscure,
    );
  }
}
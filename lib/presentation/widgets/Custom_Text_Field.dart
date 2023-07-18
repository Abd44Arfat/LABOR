import 'package:flutter/material.dart';

import '../../resources/constants.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({

    this.hintText,
    this.onChanged,
    this.onSaved,
    this.obscureText = false,
    required this.icon, this.textInputType,
  });

  Function(String)? onChanged;
  Function(String)? onSaved;
  String? hintText;
  final IconData icon;
  final TextInputType ?textInputType;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        keyboardType: textInputType,
            onSaved: onSaved != null
          ? (value) {
    onSaved!(value!);
    }
        : null,
        obscureText: obscureText!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is required';
          }
        },
        onChanged: onChanged != null
            ? (value) {
          onChanged!(value!);
        }
            : null,
        decoration: InputDecoration(
          suffixIcon: Icon(icon),
          filled: true,
          fillColor: kThemeApp,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black,
            fontFamily: "Quicksand",
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: KMainColor)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
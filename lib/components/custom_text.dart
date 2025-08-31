import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;

  const CustomTextField({super.key, required this.hintText, this.obscureText = false, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.5, child: 
    TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    ),
    );
  }
}
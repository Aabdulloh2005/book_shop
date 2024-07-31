import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  TextEditingController controller;
  Widget? prefixIcon;
  String? hintText;
  TextInputType? keyboardType;
  List<TextInputFormatter>? textInputFormatter;
  Function(String)? onChanged;
  int? maxLength;
  Widget? suffixIcon;
  CustomTextfield({
    this.textInputFormatter,
    this.keyboardType,
    super.key,
    required this.controller,
    this.prefixIcon,
    this.hintText,
    this.maxLength,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      controller: controller,
      onChanged: onChanged,
      focusNode: FocusNode(canRequestFocus: true),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xffF8F8F8),
        prefixIcon: prefixIcon,
        hintText: hintText,
        counterText: '',
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      inputFormatters: textInputFormatter,
      keyboardType: keyboardType,
    );
  }
}

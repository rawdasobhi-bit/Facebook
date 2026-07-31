import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomTextFormField extends StatefulWidget {
  String hintText;
  bool isPassword;
  TextEditingController? controller;
  String? Function(String?)? validator;

  CustomTextFormField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.controller,
    this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      style: AppStyles.regular16black,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        enabledBorder: AppStyles.outlineInputBorder,
        filled: true,
        fillColor: AppColors.lightGrey,
        border: AppStyles.outlineInputBorder,
        focusedBorder: AppStyles.outlineInputBorder,
        errorBorder: AppStyles.outlineInputBorder.copyWith(
          borderSide: BorderSide(color: AppColors.grey, width: 1),
        ),
        hintText: widget.hintText,
        hintStyle: AppStyles.regular16grey,
        suffixIcon: widget.isPassword
            ? IconButton(
          onPressed: () {
            isObscure = !isObscure;
            setState(() {});
          },
          icon: isObscure
              ? Icon(Icons.visibility_off_outlined, color: AppColors.grey)
              : Icon(Icons.visibility_outlined),
        )
            : null,
      ),
      obscureText: widget.isPassword && isObscure,
    );
  }
}
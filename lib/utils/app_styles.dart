import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static final TextStyle regular16grey = GoogleFonts.inter(
    fontSize: 16,
    color: AppColors.grey,
  );

  static final TextStyle regular16 = GoogleFonts.inter(
    fontSize: 16,
  );

  static final TextStyle medium16grey = GoogleFonts.inter(
    fontSize: 16,
    color: AppColors.grey,
    fontWeight: FontWeight.w500
  );
  static final TextStyle medium16black= GoogleFonts.inter(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w500
  );
  static final TextStyle regular16black = GoogleFonts.inter(
    fontSize: 16,
    color: AppColors.black,
  );

  static final TextStyle semiBold12black = GoogleFonts.inter(
    fontSize: 12,
    color: AppColors.black,
    fontWeight: FontWeight.w600
  );
  static final TextStyle medium12grey = GoogleFonts.inter(
    fontSize: 12,
    color: AppColors.grey,
    fontWeight: FontWeight.w500
  );

  static final outlineInputBorder = OutlineInputBorder(

    borderRadius: BorderRadius.circular(16),
    borderSide:BorderSide(color: AppColors.grey),


  );
}

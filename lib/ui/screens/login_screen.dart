import 'package:facebook/ui/widgets/custom_text_form_field.dart';
import 'package:facebook/utils/app_assets.dart';
import 'package:facebook/utils/app_colors.dart';
import 'package:facebook/utils/app_routes.dart';
import 'package:facebook/utils/app_strings.dart';
import 'package:facebook/utils/app_styles.dart';
import 'package:facebook/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    double width = SizeConfig.width(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(height * .02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppImages.facebookLogo, height: height * .10),
              SizedBox(height: height * .08),

              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextFormField(
                      hintText: AppString.enterEmailOrNumber,
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return AppString.emailOrPhoneEmptyValidator;
                        }
                        final emailRegex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
                        final phoneRegex = RegExp(r'^01[0125][0-9]{8}$');
                        if (!emailRegex.hasMatch(value.trim()) && !phoneRegex.hasMatch(value.trim())) {
                          return AppString.emailOrPhoneInvalidValidator;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * .02),

                    CustomTextFormField(
                      hintText: AppString.password,
                      isPassword: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppString.passwordEmptyValidator;
                        }
                        if (value.length < 6) {
                          return AppString.passwordLengthValidator;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: height * .04),

                    CustomButton(
                      text: AppString.login,
                      isFilled: true,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).popAndPushNamed(AppRoutes.homeRouteName);
                        }
                      },
                    ),
                    SizedBox(height: height * .025),

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        AppString.forgetPassword,
                        textAlign: TextAlign.center,
                        style: AppStyles.medium16grey,
                      ),
                    ),

                    SizedBox(height: height * .2),

                    CustomButton(
                      text: AppString.createAccount,
                      isFilled: false,
                    ),
                    SizedBox(height: height * .01),

                    Image.asset(
                      AppImages.metaLogo,
                      height: height * .05,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:logoipsum/core/utils/app_colors.dart';
import 'package:logoipsum/core/utils/text_styles.dart';
import 'package:logoipsum/presentation/controllers/login_controller.dart';
import 'package:logoipsum/presentation/widgets/custom_textfield.dart';
import 'package:logoipsum/presentation/widgets/login_button.dart';
import 'package:logoipsum/presentation/widgets/remember_me.dart';
import 'package:logoipsum/presentation/widgets/social_button.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final LoginController controller;

  const LoginForm({super.key, required this.formKey, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text("Login", style: AppTextStyles.textStyle700(fontSize: 32)),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: AppTextStyles.textStyle500(
                    color: AppColors.titleColor,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: AppTextStyles.textStyle600(
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const LabeledTextField(
                label: 'Email',
                hintText: 'dennistoochi@gmail.com',
                isPassword: false,
              ),
              const SizedBox(height: 24),
              const LabeledTextField(
                label: 'Password',
                hintText: '*******',
                isPassword: true,
              ),
              const SizedBox(height: 16),
              RememberMeAndForgot(controller: controller),
              const SizedBox(height: 20),
              LoginButton(controller: controller, formKey: formKey),
              const SizedBox(height: 24),
              _orDivider(),
              const SizedBox(height: 24),
              const SocialButton(type: 'google'),
              const SizedBox(height: 15),
              const SocialButton(type: 'facebook'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _orDivider() {
  return Row(
    children: [
      const Expanded(child: Divider()),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          'Or',
          style: AppTextStyles.textStyle400(color: AppColors.titleColor2),
        ),
      ),
      const Expanded(child: Divider()),
    ],
  );
}

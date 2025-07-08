import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:logoipsum/core/utils/app_colors.dart';
import 'package:logoipsum/core/utils/text_styles.dart';
import 'package:logoipsum/core/utils/validators.dart';
import 'package:logoipsum/presentation/controllers/login_controller.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;

  const LabeledTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.textStyle500(fontFamily: 'Plus Jakarta Sans'),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.textfieldBorderColor, width: 1),
            boxShadow: const [
              BoxShadow(
                color: AppColors.textfieldShadowColor,
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
            ],
          ),
          child: TextFormField(
            obscureText: isPassword,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              hintText: hintText,
              hintStyle: AppTextStyles.textStyle500(
                fontSize: 14,
                color: AppColors.textColor2,
              ),
            ),
            style: AppTextStyles.textStyle500(
              fontSize: 14,
              color: AppColors.textColor2,
            ),
            validator: isPassword
                ? Validators.validatePassword
                : Validators.validateEmail,
            onChanged: (val) => isPassword
                ? controller.password.value = val
                : controller.email.value = val,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:logoipsum/core/utils/app_colors.dart';
import 'package:logoipsum/core/utils/text_styles.dart';
import 'package:logoipsum/presentation/controllers/login_controller.dart';

class RememberMeAndForgot extends StatelessWidget {
  final LoginController controller;
  const RememberMeAndForgot({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Obx(
              () => Checkbox(
                value: controller.isRememberMe.value,
                onChanged: (val) =>
                    controller.isRememberMe.value = val ?? false,
              ),
            ),
            Text(
              'Remember me',
              style: AppTextStyles.textStyle500(color: AppColors.titleColor2),
            ),
          ],
        ),
        TextButton(
          onPressed: () =>
              Get.snackbar('Forgot Password', 'Forgot password tapped!'),
          child: Text(
            'Forgot Password?',
            style: AppTextStyles.textStyle600(color: AppColors.textColor),
          ),
        ),
      ],
    );
  }
}

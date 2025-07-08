
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:logoipsum/core/utils/app_colors.dart';
import 'package:logoipsum/core/utils/text_styles.dart';

class SocialButton extends StatelessWidget {
  final String type; // 'google' or 'facebook'
  const SocialButton({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final isGoogle = type == 'google';
    final label = isGoogle ? 'Continue with Google' : 'Continue with Facebook';
    final asset = isGoogle
        ? 'assets/icons/google.svg'
        : 'assets/icons/facebook.svg';
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFEFF0F6)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x99F4F5FA),
            offset: Offset(0, -3),
            blurRadius: 6,
          ),
        ],
      ),
      child: OutlinedButton.icon(
        onPressed: () {
          Get.snackbar(
            '${isGoogle ? 'Google' : 'Facebook'} Sign-In',
            'Tapped $label!',
          );
        },
        icon: SvgPicture.asset(asset, height: 20),
        label: Text(
          label,
          style: AppTextStyles.textStyle600(
            fontSize: 14,
            color: AppColors.textColor2,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }
}

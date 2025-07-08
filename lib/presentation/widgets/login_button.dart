import 'package:flutter/material.dart';
import 'package:logoipsum/core/utils/text_styles.dart';
import 'package:logoipsum/presentation/controllers/login_controller.dart';

class LoginButton extends StatelessWidget {
  final LoginController controller;
  final GlobalKey<FormState> formKey;
  const LoginButton({
    super.key,
    required this.controller,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: GestureDetector(
        onTap: () {
          if (formKey.currentState!.validate()) {
            controller.login();
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.12),
                    Color.fromRGBO(255, 255, 255, 0),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1D61E7), Color(0xFF1D61E7)],
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF375DFB),
                    offset: Offset(0, 0),
                    blurRadius: 0,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(37, 62, 167, 0.48),
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Log In',
                  style: AppTextStyles.textStyle500(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

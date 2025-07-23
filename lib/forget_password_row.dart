import 'package:flutter/material.dart';
import 'package:iti_project/app_colors.dart';
import 'package:iti_project/signUp_screen_content.dart';

class ForgetPasswordRow extends StatelessWidget {
  final String? firstWhiteText;
  final String? secoednBlcakText;

  const ForgetPasswordRow({
    super.key,
    this.firstWhiteText,
    this.secoednBlcakText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstWhiteText ?? 'text 1 ',
          style: TextStyle(
            color: AppColors.whiteApp,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignupScreenContent()),
            );
          },
          child: Text(
            secoednBlcakText ?? '',
            style: TextStyle(
              color: AppColors.whiteBloc,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

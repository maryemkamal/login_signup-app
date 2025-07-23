import 'package:flutter/material.dart';
import 'package:iti_project/app_strings.dart';
import 'package:iti_project/home.dart';
import 'package:iti_project/otp.dart';
import 'package:iti_project/app_colors.dart';
import 'package:iti_project/forget_password_row.dart';

class LoginScreenConente extends StatelessWidget {
  const LoginScreenConente({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.loginScreenWelcomeText),
        SizedBox(height: 50),
        Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              fillColor: AppColors.whiteApp,
              filled: true,
              labelText: AppStrings.loginScreenPhonenumberTextFiled,
              border: const OutlineInputBorder(),
            ),
          ),
        ),


        Padding(
          padding: EdgeInsets.all(16),
          child:TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.loginScreenPasswordTextFiled,
            border: OutlineInputBorder(),
          ),
        ),
            ),
        ForgetPasswordRow(firstWhiteText: 'هل نسيت كلمه المرور ؟'),
        ElevatedButton(onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );}, child: Text('تسجيل الدخول ')),

        Padding(
          padding: EdgeInsets.only(top: 15),
          child: ForgetPasswordRow(
            firstWhiteText: 'إنشاء حساب ',
            secoednBlcakText: 'ليس لديك حساب ؟',
          ),
        ),
      ],
    );
  }
}

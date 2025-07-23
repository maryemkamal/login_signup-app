import 'package:flutter/material.dart';
import 'package:iti_project/app_strings.dart';
import 'package:iti_project/app_colors.dart';
import 'package:iti_project/otp.dart';

class SignupScreenContent extends StatelessWidget {
  const SignupScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Column(
        children: [
          Image.asset(
            'assets/images/backdrop.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.25,
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.whiteApp,
                      filled: true,
                      labelText: AppStrings.loginScreenNameTextFiled,
                      prefixIcon: const Icon(Icons.person),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  
                  TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.whiteApp,
                      filled: true,
                      labelText: AppStrings.loginScreenPhonenumberTextFiled,
                      prefixIcon: const Icon(Icons.phone),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: AppColors.whiteApp,
                      filled: true,
                      labelText: AppStrings.loginScreenPasswordTextFiled,
                      prefixIcon: const Icon(Icons.lock),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: AppColors.whiteApp,
                      filled: true,
                      labelText: AppStrings.loginScreenConfirmPasswordTextFiled,
                      prefixIcon: const Icon(Icons.lock_outline),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.mainColor,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OtpPage()),
                      );
                    },
                    child: const Text("تأكيد"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

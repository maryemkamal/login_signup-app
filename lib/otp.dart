import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:iti_project/app_colors.dart';
import 'package:iti_project/home.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

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
                  const Text(
                    "أدخل رمز التحقق OTP",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "لقد أرسلنا الكود الخاص بك الى 010*****000\n"
                        "سينتهى هذا الكود فى 00:30",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  OtpTextField(
                    numberOfFields: 6,
                    borderColor: Colors.white,
                    focusedBorderColor: Colors.white,
                    showFieldAsBox: true,
                    borderRadius: BorderRadius.circular(10),
                    fieldWidth: 50,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      print("الكود: $verificationCode");
                    },
                  ),
                  const SizedBox(height: 20),
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
                      {Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const HomeScreen()),);}
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

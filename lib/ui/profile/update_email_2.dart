import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mmm_app_design/ui/profile/update_email.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_1.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_2.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_4.dart';
import 'package:mmm_app_design/ui/widgets/code_confirmation_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/proposal_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/small_elevated_button.dart';

class update_email_2 extends StatelessWidget {
  const update_email_2({super.key});

  void showEmailVerifiedPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          backgroundColor: Colors.white,
          content: SizedBox(
            width: 400,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/check-circle.svg'),
                SizedBox(height: 20),
                Text(
                  'Email verified successfully',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20),
                proposal_elevated_button(
                  text: 'Ok',
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => update_email()),
                      );
                    },
                    child: Image.asset('assets/Group 2.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'We just sent to a code',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Enter the six digit code sent to ****alpha@gmail.com',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A6A6A)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custom_code_confirmation_textformfield(),
                  custom_code_confirmation_textformfield(),
                  custom_code_confirmation_textformfield(),
                  custom_code_confirmation_textformfield(),
                  custom_code_confirmation_textformfield(),
                  custom_code_confirmation_textformfield(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Didn’t receive the code?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend it',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1B4965),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 430,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  showEmailVerifiedPopup(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

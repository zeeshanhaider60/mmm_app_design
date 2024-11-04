import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_1.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_2.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_4.dart';
import 'package:mmm_app_design/ui/widgets/code_confirmation_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';

class registration_screen_3 extends StatelessWidget {
  const registration_screen_3({super.key});

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
                        MaterialPageRoute(
                            builder: (context) => registration_screen_2()),
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
                  // SizedBox(
                  //   width: 10,
                  // ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registration_screen_4(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

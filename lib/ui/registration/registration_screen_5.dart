import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_1.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_3.dart';
import 'package:mmm_app_design/ui/widgets/code_confirmation_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';

class registration_screen_5 extends StatelessWidget {
  const registration_screen_5({super.key});

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
                            builder: (context) => registration_screen_3()),
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
                    'Finish signing up',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Enter the legal details to complete your profile',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Law Society Number',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Firm/Chambers Name',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Firm/Chambers Address',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(),
              SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                      color: Color(0xFF454646),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                        text: 'By registering your account you accept our, ',
                        style: TextStyle()),
                    TextSpan(
                      text: 'Terms of use\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B4965),
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                      text: 'Privacy policy',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1B4965),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 235,
              ),
              custom_elevated_button(
                text: 'Sign up',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile_creation_1(),
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

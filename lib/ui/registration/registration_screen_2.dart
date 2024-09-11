import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/on%20boarding%20intro/onboarding_splash.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_1.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_3.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';

class registration_screen_2 extends StatelessWidget {
  const registration_screen_2({super.key});

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
                            builder: (context) => onboarding_splash()),
                      );
                    },
                    child: Image.asset('assets/cross button.png'),
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
                    'Enter your email address',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Your email',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(
                  // hintText: '',
                  ),
              SizedBox(
                height: 480,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registration_screen_3(),
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

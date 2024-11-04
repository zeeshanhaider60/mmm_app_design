import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_3.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_5.dart';
import 'package:mmm_app_design/ui/widgets/code_confirmation_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';

class registration_screen_4 extends StatelessWidget {
  const registration_screen_4({super.key});

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
                  // SizedBox(
                  //   width: 10,
                  // ),
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
                    'Enter the remaining details to complete your profile',
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
                    'Name',
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
                    'Phone number',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  custom_code_confirmation_textformfield(
                    width: 64.0,
                    height: 48.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  custom_code_confirmation_textformfield(
                    width: 260.0,
                    height: 48.0,
                    hintText: 'Phone number',
                  )
                ],
              ),
              SizedBox(
                height: 370,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registration_screen_5(),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_2.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_5.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';

class profile_creation_1 extends StatelessWidget {
  const profile_creation_1({super.key});

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
                            builder: (context) => registration_screen_5()),
                      );
                    },
                    child: Image.asset('assets/Group 2.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/Browser-Window-Check--Streamline-Ux 1@2x.svg'),
                  SizedBox(height: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Let’s start with your profile',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Text(
                        'creation',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'CLorem ipsum dolor sit amet consectetur. Felis',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF636363),
                        ),
                      ),
                      Text(
                        'consectetur condimentum tortor volutpat faucibus',
                        style: TextStyle(
                          fontSize: 13.7,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF636363),
                        ),
                      ),
                      Text(
                        'iaculis',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF636363),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile_creation_2(),
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

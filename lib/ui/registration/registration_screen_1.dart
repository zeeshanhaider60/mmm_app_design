import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/on%20boarding%20intro/onboarding_splash.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_2.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';

class registration_screen_1 extends StatefulWidget {
  const registration_screen_1({super.key});

  @override
  State<registration_screen_1> createState() => _registration_screen_1State();
}

class _registration_screen_1State extends State<registration_screen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                  Text(
                    'Continue as',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.15,
                    child: Column(
                      children: [
                        Image.asset('assets/Frame 1998.png'),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'User',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.15,
                    child: Column(
                      children: [
                        Image.asset('assets/Frame 1999.png'),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Legal Professional',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
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
                        builder: (context) => registration_screen_2(),
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

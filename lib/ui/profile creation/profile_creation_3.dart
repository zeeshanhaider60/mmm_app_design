import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_2.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_4.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_5.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_whitebg.dart';

class profile_creation_3 extends StatelessWidget {
  const profile_creation_3({super.key});

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
                            builder: (context) => profile_creation_2()),
                      );
                    },
                    child: Image.asset('assets/Group 2.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Image.asset('assets/Frame 2030.png'))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Text(
                        'Profile Photo',
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
                        'Add a professional display photo',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset('assets/Mask group.png'),
                  SizedBox(height: 30),
                ],
              ),
              SizedBox(
                height: 190,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile_creation_4(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

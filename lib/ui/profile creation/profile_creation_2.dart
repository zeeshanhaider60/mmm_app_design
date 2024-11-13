import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_3.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_5.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_whitebg.dart';

class profile_creation_2 extends StatefulWidget {
  const profile_creation_2({super.key});

  @override
  State<profile_creation_2> createState() => _profile_creation_2State();
}

class _profile_creation_2State extends State<profile_creation_2> {
  final ImagePicker _picker = ImagePicker();
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
                    height: 20,
                  ),
                  SvgPicture.asset('assets/iconoir_profile-circle.svg'),
                  SizedBox(height: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add a profile photo',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'CLorem ipsum dolor sit amet consectetur. Felis ',
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
                height: 70,
              ),
              custom_elevated_button(
                  text: 'Continue',
                  onPressed: () async {
                    final XFile? pickedImage =
                        await _picker.pickImage(source: ImageSource.gallery);

                    if (pickedImage != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              profile_creation_3(imagePath: pickedImage.path),
                        ),
                      );
                    }
                  }),
              SizedBox(
                height: 10,
              ),
              custom_elevated_button_whitebg(
                  text: 'Take Photo',
                  onPressed: () async {
                    final XFile? capturedImage =
                        await _picker.pickImage(source: ImageSource.camera);

                    if (capturedImage != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              profile_creation_3(imagePath: capturedImage.path),
                        ),
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}

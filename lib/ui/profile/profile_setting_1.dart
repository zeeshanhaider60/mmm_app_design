import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/on%20boarding%20intro/onboarding_splash.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_2.dart';
import 'package:mmm_app_design/ui/profile/change_password.dart';
import 'package:mmm_app_design/ui/profile/edit_profile.dart';
import 'package:mmm_app_design/ui/profile/update_email.dart';
import 'package:mmm_app_design/ui/proposals/history_tab.dart';
import 'package:mmm_app_design/ui/proposals/new_tab.dart';
import 'package:mmm_app_design/ui/proposals/new_tab_2.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_1.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_4.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_results.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/elevated_button_filter.dart';

class profile_setting_1 extends StatelessWidget {
  const profile_setting_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
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
                      MaterialPageRoute(builder: (context) => home_page()),
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
                  'Proposals ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/Frame 2149.svg'),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Marvin McKinney',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      'marvin.mckinney@example.com',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF454646)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Account settings',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => edit_profile(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit profile',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SvgPicture.asset('assets/chevron-right.svg'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => change_password(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change password',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SvgPicture.asset('assets/chevron-right.svg'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => update_email(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Update email',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SvgPicture.asset('assets/chevron-right.svg'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alert notifications',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SvgPicture.asset('assets/Group 20.svg'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'More',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'About us',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SvgPicture.asset('assets/chevron-right.svg'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Privay policy',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SvgPicture.asset('assets/chevron-right.svg'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Terms and conditions',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SvgPicture.asset('assets/chevron-right.svg'),
              ],
            ),
            SizedBox(
              height: 95,
            ),
            custom_elevated_button(
              text: 'Logout',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => onboarding_splash(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}

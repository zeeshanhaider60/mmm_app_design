// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/proposals/history_tab.dart';
import 'package:mmm_app_design/ui/proposals/new_tab.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_whitebg.dart';

class proposals_details extends StatelessWidget {
  const proposals_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Proposal details ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 0,
            ),
            // SvgPicture.asset('assets/Line 13.svg'),
            Divider(
              thickness: 2.0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Child custody issue',
                  style: TextStyle(
                      fontSize: 18,
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
                SvgPicture.asset(
                    'assets/Family-Child--Streamline-Ultimate.svg'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Family law',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/calendar.svg'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '12th aug, 24',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/map-pin.svg'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Law Courts Building, Queens Square, \nSydney, NSW 2000',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2.0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Cover letter',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Felis \nconsectetur condimentum tortor volutpat faucib\nus iaculis ,Lorem ipsum dolor sit amet consectet\nur Felis consectetur condimentum tortor volut\npat faucibus iaculis, Lorem ipsum dolor sit amet \nconsectetur. Felis consectetur condimentum \ntortor volutpat faucibus iaculis',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2.0,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset('assets/Frame 1988.png'),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aron finich',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      'Civil lawyer',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF454646)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 85,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View profile',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1B4965)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'About lawyer',
                  style: TextStyle(
                      fontSize: 14,
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
                SvgPicture.asset('assets/Tool-Box--Streamline-Ultimate 1.svg'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '8+ years of experience ',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/map-pin.svg'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'New south wale',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF454646)),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 2.0,
            ),
            SizedBox(
              height: 5,
            ),
            custom_elevated_button(
              text: 'Accept',
              onPressed: () {},
            ),
            SizedBox(
              height: 7,
            ),
            custom_elevated_button_whitebg(
              text: 'Decline',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

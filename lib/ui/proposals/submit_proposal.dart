import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/freelancer%20profile/freelancer_profile.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/proposals/history_tab.dart';
import 'package:mmm_app_design/ui/proposals/new_tab.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_small_blue.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_small_width.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_whitebg.dart';

class submit_proposal extends StatelessWidget {
  const submit_proposal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                    'Submit proposal ',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 05,
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
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Matter description',
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
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Cover letter',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 230,
                width: 388,
                color: Color(0xFFF5F7F9),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Documents',
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
                  Image.asset('assets/Frame 2035.png'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  custom_elevated_button_small_width_white(
                    text: 'Cancle',
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  custom_elevated_button_small_width_blue(
                    text: 'Submit',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => freelancer_profile(),
                          ));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

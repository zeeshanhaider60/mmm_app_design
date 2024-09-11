// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_2.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_results.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/elevated_button_filter.dart';

class post_matter_1 extends StatelessWidget {
  const post_matter_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
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
                    'Post a matter',
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
                  Text(
                    'Matter title',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5A5C5B)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(
                hintText: 'Write name of issue',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Select category',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5A5C5B)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(
                hintText: 'Case type',
                suffixIcon: Image.asset('assets/chevron-down.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Case number ( optional)',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5A5C5B)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(
                hintText: 'Type your case number',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Case details ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5A5C5B)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 265,
                width: 388,
                color: Color(0xFFE8E8E8),
                child: custom_textformfield(),
              ),
              SizedBox(
                height: 15,
              ),
              custom_elevated_button(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => post_matter_2(),
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

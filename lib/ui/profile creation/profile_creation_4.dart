import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_2.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_3.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_5.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_5.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_whitebg.dart';

class profile_creation_4 extends StatefulWidget {
  profile_creation_4({super.key});

  @override
  State<profile_creation_4> createState() => _profile_creation_4State();
}

class _profile_creation_4State extends State<profile_creation_4> {
  final List<String> skills = [
    "Legal Research",
    "Negotiation",
    "Case Management",
    "Client Counseling",
    "Legal Writing",
    "Litigation",
    "Mediation",
    "Ethical Judgment",
    "Time Management",
    "Contract Drafting",
    "Trial Advocacy",
    "Conflict Resolution",
    "Legal Compliance"
  ];

  List<bool> selectedSkills = [];

  @override
  void initState() {
    super.initState();
    selectedSkills = List.generate(skills.length, (index) => false);
  }

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
                            builder: (context) => profile_creation_3()),
                      );
                    },
                    child: Image.asset('assets/Group 2.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Image.asset('assets/Frame 2030 (1).png'))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    children: [
                      Text(
                        'About Yourself',
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
                        'Write some information about yourself , experience and\nskillset',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Wrap(
                          spacing: 7.0,
                          runSpacing: 0.0,
                          children: skills.map((skill) {
                            int index = skills.indexOf(skill);

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSkills[index] =
                                      !selectedSkills[index];
                                });
                              },
                              child: Chip(
                                label: Text(skill),
                                backgroundColor: Colors.white,
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color: selectedSkills[index]
                                        ? Color(0xFF1B4965)
                                        : Color(0xFFE8E8E8),
                                    width: 1,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 1.0, vertical: 0.0),
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: selectedSkills[index]
                                      ? FontWeight.w400
                                      : FontWeight.normal,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 388,
                height: 205,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F7F9),
                  border: Border.all(
                    color: Color(0xFFE8E8E8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile_creation_5(),
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

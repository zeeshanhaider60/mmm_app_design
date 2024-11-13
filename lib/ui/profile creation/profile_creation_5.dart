import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/home%20page/home_page_v2.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_2.dart';
import 'package:mmm_app_design/ui/profile%20creation/profile_creation_3.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_5.dart';
import 'package:mmm_app_design/ui/widgets/custom_dropdown.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button_whitebg.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';

class profile_creation_5 extends StatefulWidget {
  profile_creation_5({super.key});

  @override
  State<profile_creation_5> createState() => _profile_creation_5State();
}

class _profile_creation_5State extends State<profile_creation_5> {
  final List<String> services = [
    'Corporate law',
    'Criminal law',
    'Family lawyer',
    'Intellectual Property law',
    'Environmental law',
    'Civil law'
  ];

  List<String> selectedServices = [];

  void _onServiceSelected(bool? selected, String service) {
    setState(() {
      if (selected != null && selected) {
        selectedServices.add(service);
      } else {
        selectedServices.remove(service);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var selectedValue;
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
                      child: Image.asset('assets/Frame 2030 (2).png'))
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
                ],
              ),
              Container(
                width: 388,
                height: 51,
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 7.0,
                        runSpacing: 0.0,
                        children: selectedServices.map((service) {
                          bool isHighlighted = service == "Corporate law" ||
                              service == "Criminal law";
                          return Chip(
                            label: Text(service),
                            backgroundColor: Colors.white,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: isHighlighted
                                    ? Color(0xFFE8E8E8)
                                    : Color(0xFFE8E8E8),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.0, vertical: 0.0),
                            labelStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: isHighlighted
                                  ? FontWeight.w400
                                  : FontWeight.normal,
                            ),
                            onDeleted: () {
                              _onServiceSelected(false, service);
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              custom_textformfield(
                prefixIcon: Image.asset('assets/search.png'),
                hintText: 'Search',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: services.map((service) {
                    return SizedBox(
                      height: 33,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Checkbox(
                            value: selectedServices.contains(service),
                            onChanged: (bool? selected) {
                              _onServiceSelected(selected, service);
                            },
                          ),
                          Expanded(
                            child: Text(service),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Area of practice',
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
              custom_dropdown(
                hintText: "Select the area of practice you want",
                items: ["Option 1", "Option 2", "Option 3"],
                value: selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
                suffixIcon: Image.asset('assets/chevron-down.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Experience',
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
                hintText: 'No of years',
              ),
              SizedBox(
                height: 25,
              ),
              custom_elevated_button(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home_page_v2(),
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

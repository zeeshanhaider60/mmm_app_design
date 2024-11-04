// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_results.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/elevated_button_filter.dart';

class search extends StatelessWidget {
  const search({super.key});

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
                    'Quick filter',
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
              custom_textformfield(
                prefixIcon: Image.asset('assets/search.png'),
                hintText: 'Select the court of your choice',
              ),
              SizedBox(
                height: 20,
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
              custom_textformfield(
                hintText: 'Select the court of your choice',
                suffixIcon: Image.asset('assets/chevron-down.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Select court',
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
                hintText: 'Select the court of your choice',
                suffixIcon: Image.asset('assets/chevron-down.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Select state',
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
                hintText: 'Select the state of matter',
                suffixIcon: Image.asset('assets/chevron-down.png'),
              ),
              SizedBox(
                height: 230,
              ),
              Divider(
                thickness: 1.5,
                color: Color(0xFFE8E8E8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Clear all',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1B4965)),
                      )),
                  elevated_button_filter(
                    text: 'Apply filters',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => search_results(),
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

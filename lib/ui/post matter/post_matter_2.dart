import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_1.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_loading.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_results.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/elevated_button_filter.dart';

class post_matter_2 extends StatefulWidget {
  const post_matter_2({super.key});

  @override
  State<post_matter_2> createState() => _post_matter_2State();
}

class _post_matter_2State extends State<post_matter_2> {
  String _selectedOption = 'Option 1';
  void _showAttachmentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Attachments',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  IconButton(
                    icon: Image.asset('assets/cross button.png'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'Take a photo',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Choose from files',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

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
                        MaterialPageRoute(
                            builder: (context) => post_matter_1()),
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
                    'Select date & time',
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
                hintText: 'MM/YY/DD : HH:MM',
                suffixIcon: GestureDetector(
                  onTap: () {
                    //select date and time function
                  },
                  child: Image.asset('assets/calendar (1).png'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Court location',
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
                hintText: 'Select the location of court',
                suffixIcon: Image.asset('assets/chevron-down.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Urgency',
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
              Row(
                children: [
                  Radio<String>(
                    value: 'Option 1',
                    groupValue: _selectedOption,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    'With in 24hrs',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Option 2',
                    groupValue: _selectedOption,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    'With in a week',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Option 3',
                    groupValue: _selectedOption,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    'With in a month',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Option 4',
                    groupValue: _selectedOption,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value!;
                      });
                    },
                  ),
                  Text(
                    'On a specific date',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Attachment',
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
                  height: 119,
                  width: 389,
                  color: Color(0xFFF5F7F9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _showAttachmentBottomSheet(context);
                        },
                        child: Image.asset(
                            'assets/Doc-File--Streamline-Ux.svg.png'),
                      ),
                      Text(
                        ' Upload your doc here',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              custom_elevated_button(
                text: 'Next',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => post_matter_loading(),
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

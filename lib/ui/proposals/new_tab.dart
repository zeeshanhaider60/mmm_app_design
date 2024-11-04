import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mmm_app_design/ui/proposals/proposal_details.dart';
import 'package:mmm_app_design/ui/proposals/submit_proposal.dart';
import 'package:mmm_app_design/ui/widgets/proposal_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/small_elevated_button.dart';

class new_tab extends StatelessWidget {
  const new_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 175,
                width: 388,
                child: Container(
                    // color: Color(0xFFF5F7F9),
                    // color: Colors.white,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(8),
                    // ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xFFE8E8E8),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/Group 5.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Child custody issue',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Family law',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF454646))),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Column(
                              children: [
                                Image.asset('assets/Frame 2198.png'),
                                SizedBox(
                                  height: 22,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cover letter: “',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  TextSpan(
                                    text:
                                        'Lorem ipsum dolor sit amet consectetur. Felis \nconsectetur condimentum tortor volutpat faucibus iaculis”',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => submit_proposal(),
                                      ));
                                },
                                child:
                                    Image.asset('assets/chevron-down (1).png')),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/proposals/proposal_details.dart';
import 'package:mmm_app_design/ui/widgets/proposal_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/small_elevated_button.dart';

class courts extends StatelessWidget {
  const courts({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 296,
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
                          Image.asset('assets/Frame 2261.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Supreme Court of New South Wales',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/map-pin.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Queens Square, Sydney, NSW',
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
                                Row(
                                  children: [
                                    Image.asset('assets/phone.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '(02) 9230 8111 ',
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
                                Row(
                                  children: [
                                    Image.asset('assets/mail.png'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      ' info@supremecourt.nsw.gov.au',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF454646)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          }),
    );
  }
}

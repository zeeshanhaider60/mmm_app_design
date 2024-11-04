import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/proposals/proposal_details.dart';
import 'package:mmm_app_design/ui/widgets/proposal_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/small_elevated_button.dart';

class best_matches_tab extends StatelessWidget {
  const best_matches_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 165,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF454646))),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  children: [
                                    Image.asset('assets/Group 37 (1).png'),
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
                                Text(
                                    'We are looking for someone who can help us in\nresolving this case',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF454646))),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/calendar.svg'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '12th aug, 24',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF454646)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset('assets/map-pin.svg'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Law Courts Building, Queens Sq..',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF454646)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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

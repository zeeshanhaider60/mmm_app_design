import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/my%20matters/matter_details.dart';
import 'package:mmm_app_design/ui/widgets/proposal_elevated_button.dart';

class all_tab extends StatelessWidget {
  const all_tab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 185,
                width: 388,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color(0xFFE8E8E8),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset('assets/Group 5.svg'),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Child custody issue',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SvgPicture.asset('assets/Frame 2139.svg'),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  SvgPicture.asset('assets/more-vertical.svg'),
                                ],
                              ),
                              Text(
                                'Family law',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF454646)),
                              ),
                              SizedBox(
                                height: 5,
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
                                    'Law Courts Building, Queens Sq..',
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
                                  SizedBox(
                                    width: 85,
                                  ),
                                  proposal_elevated_button(
                                    text: 'Edit',
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                matter_details(),
                                          ));
                                    },
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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

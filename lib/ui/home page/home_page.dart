// import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mmm_app_design/ui/bookmarks/bookmark_1.dart';
import 'package:mmm_app_design/ui/home%20page/best_matches_tab.dart';
import 'package:mmm_app_design/ui/my%20matters/my_matters_1.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_1.dart';
import 'package:mmm_app_design/ui/profile/profile_setting_1.dart';
import 'package:mmm_app_design/ui/proposals/history_tab.dart';
import 'package:mmm_app_design/ui/proposals/proposals_1.dart';
import 'package:mmm_app_design/ui/proposals/proposals_2.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_1.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_2.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_3.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_4.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/small_elevated_button.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int _selectedIndex = 2;

  static List<Widget> _pages = <Widget>[
    registration_screen_1(),
    registration_screen_2(),
    proposals_1(),
    registration_screen_4(),
    registration_screen_1(),
  ];
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      // case 0:
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => post_matter_1(),
      //       ));
      //   break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => my_matters_1(),
            ));
        break;
      case 2:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => post_matter_1(),
            ));
        break;
      case 3:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => proposals_2(),
            ));
        break;
      case 4:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => profile_setting_1(),
            ));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/icon.png'),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => bookmark_1(),
                                ));
                          },
                          child: Image.asset('assets/bookmark.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/bell.png')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_textformfield(
                prefixIcon: Image.asset('assets/search.png'),
                // suffixIcon: Image.asset('assets/mage_filter.png'),
                hintText: 'Search for matters',
                suffixIcon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => search()),
                    );
                  },
                  child: Image.asset('assets/mage_filter.png'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // SizedBox(
              //   height: 138,
              //   width: 388,
              //   child: Card(
              //     color: Color(0xFFF5F7F9),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: [
              //         Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Post your legal matter today',
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color(0xFF1B4965)),
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               'Create a free post which contains the\ndetails of your legal issue',
              //               style: TextStyle(
              //                 fontSize: 10.5,
              //                 fontWeight: FontWeight.w400,
              //                 color: Color(0xFF454646),
              //               ),
              //             ),
              //             small_elevated_button(
              //               text: 'Get Started',
              //               onPressed: () {},
              //             ),
              //           ],
              //         ),
              //         Image.asset(
              //             'assets/Logistic-Phone-2--Streamline-Ux 1.png')
              //       ],
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Text(
                    'Areas of Legal Practice ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/Group 5 (1).png',
                          scale: 1.15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Family',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/Group 5 (2).png',
                          scale: 1.15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tax',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/Group 5 (3).png',
                          scale: 1.15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Criminal',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/Group 5 (4).png',
                          scale: 1.15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Real Estate',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/Group 5 (5).png',
                          scale: 1.15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Civil Right',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/Group 5 (5).png',
                          scale: 1.15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Civil Right',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Highlights',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        width: 135,
                        height: 132,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/Group 37.png'),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Active matters',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF454646)),
                              ),
                              Text(
                                '05',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 140,
                        height: 132,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/Group 38.png'),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Submitted proposals',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF454646)),
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 135,
                        height: 132,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/Group 38 (1).png'),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Resolved matters',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF454646)),
                              ),
                              Text(
                                '02',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 145,
                        height: 142,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/Group 37.png'),
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                'Active matters',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF454646)),
                              ),
                              Text(
                                '05',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 650,
                child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(tabs: [
                          Tab(
                            child: Text(
                              '  Best matches  ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '            Posted                  ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          )
                        ]),
                        Expanded(
                          child: TabBarView(children: [
                            best_matches_tab(),
                            history_tab(),
                          ]),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _onTapped,
            selectedItemColor: Color(0xFF1B4965),
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.white,
            selectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset('assets/home-2.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/Legal-Hammer--Streamline-Ultimate 1.png'),
                label: 'My Matters',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/float-btn.png'),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/Task-List-Edit-1--Streamline-Ultimate 1.png'),
                label: 'Proposals',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                    'assets/Single-Neutral-Circle--Streamline-Ultimate 1.png'),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

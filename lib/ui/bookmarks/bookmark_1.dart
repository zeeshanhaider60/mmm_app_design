// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mmm_app_design/ui/bookmarks/courts.dart';
import 'package:mmm_app_design/ui/home%20page/best_matches_tab.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_2.dart';
import 'package:mmm_app_design/ui/proposals/history_tab.dart';
import 'package:mmm_app_design/ui/proposals/new_tab.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_results.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/elevated_button_filter.dart';

class bookmark_1 extends StatelessWidget {
  const bookmark_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
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
                  'Favourites',
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
            Container(
              height: 650,
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(tabs: [
                        Tab(
                          child: Text(
                            '        Matters(6)                ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '       Courts (3)                ',
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
                          courts(),
                        ]),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

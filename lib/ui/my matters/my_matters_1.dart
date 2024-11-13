import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mmm_app_design/ui/home%20page/home_page.dart';
import 'package:mmm_app_design/ui/my%20matters/all_tab.dart';
import 'package:mmm_app_design/ui/my%20matters/matter_details.dart';
import 'package:mmm_app_design/ui/post%20matter/post_matter_2.dart';
import 'package:mmm_app_design/ui/proposals/history_tab.dart';
import 'package:mmm_app_design/ui/proposals/new_tab.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_result_list.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_results.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';
import 'package:mmm_app_design/ui/widgets/custom_textformfield.dart';
import 'package:mmm_app_design/ui/widgets/elevated_button_filter.dart';

class my_matters_1 extends StatelessWidget {
  const my_matters_1({super.key});

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
                  'All matters',
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
              hintText: 'Search by case title or case number ',
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(tabs: [
                        Tab(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Opened',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Asigned',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Closed',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        )
                      ]),
                      Expanded(
                        child: TabBarView(children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => matter_details(),
                                    ));
                              },
                              child: search_result_list()),
                          SizedBox(),
                          search_result_list(),
                          SizedBox()
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

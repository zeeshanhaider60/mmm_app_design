import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/home%20page/best_matches_tab.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search.dart';
import 'package:mmm_app_design/ui/search%20and%20filters/search_result_list.dart';

class search_results extends StatelessWidget {
  const search_results({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                        MaterialPageRoute(builder: (context) => search()),
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
                    'Search result',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 650, child: search_result_list()),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/on%20boarding%20intro/onboarding_splash.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_2.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';

class registration_screen_1 extends StatefulWidget {
  const registration_screen_1({super.key});

  @override
  State<registration_screen_1> createState() => _registration_screen_1State();
}

class _registration_screen_1State extends State<registration_screen_1> {
  // bool _isSelected1 = false;
  // bool _isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
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
                          builder: (context) => onboarding_splash()),
                    );
                  },
                  child: Image.asset('assets/cross button.png'),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                // SizedBox(
                //   width: 10,
                // ),
                Text(
                  'Continue as',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Row(
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           _isSelected1 = !_isSelected1;
            //         });
            //       },
            //       child: Container(
            //         decoration: BoxDecoration(
            //           border: Border.all(
            //             color: _isSelected1 ? Colors.blue : Colors.transparent,
            //             width: 1,
            //           ),
            //         ),
            //         child: Image.asset(
            //           'assets/user icon.png',
            //           height: 180,
            //           width: 190,
            //         ),
            //       ),
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         setState(() {
            //           _isSelected2 = !_isSelected2;
            //         });
            //       },
            //       child: Container(
            //         decoration: BoxDecoration(
            //           border: Border.all(
            //             color: _isSelected2 ? Colors.blue : Colors.transparent,
            //             width: 1,
            //           ),
            //         ),
            //         child: Image.asset(
            //           'assets/legal professional.png',
            //           height: 180,
            //           width: 190,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Image.asset('assets/user legal both.png'),
            SizedBox(
              height: 370,
            ),
            custom_elevated_button(
              text: 'Continue',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => registration_screen_2(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}

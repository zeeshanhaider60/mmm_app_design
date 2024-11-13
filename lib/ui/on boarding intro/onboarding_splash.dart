import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/registration/registration_screen_1.dart';
import 'package:mmm_app_design/ui/widgets/custom_elevated_button.dart';

class onboarding_splash extends StatefulWidget {
  const onboarding_splash({super.key});

  @override
  _onboarding_splashState createState() => _onboarding_splashState();
}

class _onboarding_splashState extends State<onboarding_splash> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Row(
            children: [
              SizedBox(width: 157),
              Image.asset('assets/small logo.png'),
              SizedBox(width: 80),
              TextButton(
                onPressed: () {},
                child: Text(
                  'skip',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                OnboardingPage(
                  imagePath: 'assets/onboarding splash 1.png',
                  title1: 'Post your legal matters',
                  title2: 'easily and safely',
                  subtitle1: 'Create detailed listings for your legal cases',
                  subtitle2:
                      'Provide all necessary information so that the right',
                  subtitle3: 'lawyers can find and assist you',
                ),
                OnboardingPage(
                  imagePath: 'assets/onboarding splash 2.png',
                  title1: 'Find experienced lawyers',
                  title2: 'and barristers',
                  subtitle1: 'Browse through a  list of qualified lawyers who',
                  subtitle2: 'belong to legal fields. Review their profiles',
                  subtitle3: 'experience, and  to find the best match',
                ),
                OnboardingPage(
                  imagePath: 'assets/onboarding splash 3.png',
                  title1: 'Secure and transparent',
                  title2: 'communication',
                  subtitle1: 'Communicate with lawyers securely through our',
                  subtitle2:
                      'app. Track all interactions and ensure your personal',
                  subtitle3: 'information is protected',
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentPage == index ? Color(0xFF1B4965) : Colors.grey,
                ),
              );
            }),
          ),
          SizedBox(height: 30),
          custom_elevated_button(
            text: 'Get Started',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => registration_screen_1(),
                  ));
            },
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have an account? ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title1;
  final String title2;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;

  const OnboardingPage({
    required this.imagePath,
    required this.title1,
    required this.title2,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title1,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              title2,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 10),
            Text(
              subtitle1,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF636363),
              ),
            ),
            Text(
              subtitle2,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF636363),
              ),
            ),
            Text(
              subtitle3,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF636363),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

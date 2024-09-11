import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/splash%20screen/splash_loader.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  bool _isLogoUp = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 50), () {
      setState(() {
        _isLogoUp = true;
      });
    });

    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => splash_loader()),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFF1B4965),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeOut,
              transform: _isLogoUp
                  ? Matrix4.translationValues(0, -20, 0)
                  : Matrix4.translationValues(0, 0, 0),
              child: Image.asset('assets/Logo v1.png'),
            ),
          ],
        ),
      );
}

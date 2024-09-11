import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/on%20boarding%20intro/onboarding_splash.dart';

class splash_loader extends StatefulWidget {
  const splash_loader({super.key});

  @override
  State<splash_loader> createState() => _splash_loaderState();
}

class _splash_loaderState extends State<splash_loader> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => onboarding_splash()),
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
            Center(child: Image.asset('assets/Logo v1 (1).png')),
            CircularProgressIndicator(color: Colors.white,)
          ],
        ),
      );
}

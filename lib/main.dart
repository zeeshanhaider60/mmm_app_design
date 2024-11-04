import 'package:flutter/material.dart';
import 'package:mmm_app_design/ui/splash%20screen/splash_screen.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MMM App Design',
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1B4965)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: splash_screen(),
    );
  }
}

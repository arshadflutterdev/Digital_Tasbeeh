import 'dart:async'; // <--- IMPORTANT: You must import this

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasbeeh/App/Constant/appimages.dart';
import 'package:tasbeeh/App/Constant/appstyle.dart';
import 'package:tasbeeh/App/Constant/apptext.dart';
import 'package:tasbeeh/App/Routes/approutes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String displayedText = "";
  int _currentIndex = 0;
  Timer? _timer; // <-- Save the timer to cancel it properly

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      startTypingAnimation();
    });
  }

  void startTypingAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (_currentIndex < Apptext.appname.length) {
        setState(() {
          displayedText += Apptext.appname[_currentIndex];
          _currentIndex++;
        });
      } else {
        timer.cancel();
        Future.delayed(Duration(seconds: 1), () {
          Get.offNamed(AppRoutes.tasbih);
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer if user leaves the screen
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Appimages.tasbihimage),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Center(
                  child: Text(
                    displayedText,
                    style: Appstyle.headlinestyle()?.copyWith(
                      color: Colors.white,
                      fontSize: width * 0.07, // 8% of screen width
                      letterSpacing: 4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

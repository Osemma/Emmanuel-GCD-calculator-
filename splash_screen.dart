import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gcd/gcdpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => gcdPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/image/213.png'),
        fit: BoxFit.fill
        ),
      ),

      )
      );
  }
}
import 'dart:js';

import 'package:bigbeats/main.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome()async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(this.context, MaterialPageRoute(builder: (context)=> HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash.jpg"), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              "Big Beats",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Jua",
                fontSize: 65,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    ));
  }
}

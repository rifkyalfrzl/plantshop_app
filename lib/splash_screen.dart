import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plantshop/components/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshop/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/plantshop.png', width: 150, height: 150,),
            Text('PlantShop', style: GoogleFonts.gfsDidot(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
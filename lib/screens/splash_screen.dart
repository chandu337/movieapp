import 'package:flutter/material.dart';
import 'package:ottapp/screens/home_screen.dart';
import 'package:ottapp/screens/login_screen.dart';
import 'package:ottapp/widgets/bottom_nav.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
   await Future.delayed(Duration(seconds: 3));
   final prefs = await SharedPreferences.getInstance();
   final isLoggedIn= await prefs.getBool("isLoggedIn") ?? false;
   if(isLoggedIn){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNav(child: HomePage())));
   }
   else {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Image.network("https://yt3.googleusercontent.com/ytc/AIdro_kmdAl1l11SDP0ncAzoTmrsVGsbbyd5ioxP9CckxOlU88U=s900-c-k-c0x00ffffff-no-rj"),
      ),
      
    );
  }
}
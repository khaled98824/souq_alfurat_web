import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:souq_alfurat_web/Auth/NewLogin.dart';
import 'package:souq_alfurat_web/models/PageRoute.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Firebase.initializeApp();
    print('here spalsh');
    Timer(Duration(seconds: 2),(){
      goPage();
    });

  }

int loginOrHome;
  goPage()async{
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    if(sharedPref.getInt('navigatorSelect')==null){
      //sharedPref.setInt('navigatorSelect', 0);
      Navigator.pushReplacement(context, BouncyPageRoute(widget: NewLogin()));

      //Navigator.pushReplacement(context, BouncyPageRoute(widget: Home()));
    }else if(sharedPref.getInt('navigatorSelect')==1){
      Navigator.pushReplacement(context, BouncyPageRoute(widget: NewLogin()));
    }else if (sharedPref.getInt('navigatorSelect')==2){

    }
    setState(() {
      loginOrHome =sharedPref.getInt('navigatorSelect');
    });

    print('k${sharedPref.getBool('autoLogin')}');
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Image.asset('assets/images/alsouq-poster.jpg',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height)
    );
  }}
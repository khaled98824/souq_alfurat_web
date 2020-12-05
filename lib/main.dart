
//import 'package:souq_alfurat_web/ui/SplashScreen.dart';
import 'package:souq_alfurat_web/ui/pages/HomePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:apple_sign_in/apple_sign_in.dart';
//import 'package:provider/provider.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Cars&MotorCycles.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Clothes.dart';
import 'package:souq_alfurat_web/ui/pages/categories/DevicesAndElectronics.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Farming.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Food.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Games.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Homes.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Livestocks.dart';
import 'package:souq_alfurat_web/ui/pages/categories/Mobile.dart';
import 'package:souq_alfurat_web/ui/pages/categories/OccupationsAndServices.dart';
// void setupLocator() {
//   GetIt.I.registerLazySingleton(() => PushNotificationService());
// }

void main() async {
  //setupLocator();
  //Fix for : Unhandled Exception: ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized.
  //WidgetsFlutterBinding.ensureInitialized();
  //final appleSignInAvailable = await AppleSignInAvailable.check();
  // runApp(
  //     Provider<AppleSignInAvailable>.value(
  //       value: appleSignInAvailable,
  //       child:
  //       MyApp(),
  //     )
  // );
  runApp(

  MaterialApp(
    routes:{
      // AddNewRequest.id : (context) => AddNewRequest(),
      // Exchange.id : (context) => Exchange(),
      // MyChats.id : (context) => MyChats(),
      // SearchUi.id : (context) => SearchUi(),
      // Ads.id : (context) => Ads(),
       Home.id : (context) => Home(),
      // MyAccount.id : (context) => MyAccount(),
      // AddNewAd.id : (context) => AddNewAd(),
      Food.id : (context) => Food(),
      Clothes.id : (context) => Clothes(),
      Games.id : (context) => Games(),
      Farming1.id : (context) => Farming1(),
      Livestock.id : (context) => Livestock(),
      Homes.id : (context) => Homes(),
      OccupationsAndServices.id : (context) => OccupationsAndServices(),
      Mobile.id : (context) => Mobile(),
      DevicesAndElectronics.id : (context) => DevicesAndElectronics(),
      CarsAndMotorCycles.id : (context) => CarsAndMotorCycles(),
      },
      home: MyApp(),
    debugShowCheckedModeBanner: false,
     )
  );
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
            child: Text('Error'),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Home();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}
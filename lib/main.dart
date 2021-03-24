import 'package:nearest_city_rider/dataprovider/appdata.dart';
import 'package:nearest_city_rider/globalvariable.dart';
import 'package:nearest_city_rider/screens/loginpage.dart';
import 'package:nearest_city_rider/screens/mainpage.dart';
import 'package:nearest_city_rider/screens/registrationpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'db2',
    options: Platform.isIOS
        ? const FirebaseOptions(
      googleAppID: '1:952623477416:android:a76dffc54964c30d39c89d',
      gcmSenderID: '169450788828',
      databaseURL: 'https://nearestcityofficial.firebaseio.com',
    )
        : const FirebaseOptions(
      googleAppID: '1:952623477416:android:a76dffc54964c30d39c89d',
      apiKey: 'AIzaSyBRXA1hSnFeJI6z5yNAcajheGTACy1MSzY',
      databaseURL: 'https://nearestcityofficial.firebaseio.com',
    ),
  );

  currentFirebaseUser = await FirebaseAuth.instance.currentUser();

  runApp(MyApp());

}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Brand-Regular',
          primarySwatch: Colors.blue,
        ),
        initialRoute: (currentFirebaseUser == null) ? LoginPage.id : MainPage.id,
        routes: {
          RegistrationPage.id: (context) => RegistrationPage(),
          LoginPage.id: (context) => LoginPage(),
          MainPage.id: (context) => MainPage(),
        },
      ),
    );
  }
}


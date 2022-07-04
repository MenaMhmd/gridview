import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travels/screens/Categoryscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travels/screens/Categorytrip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
       // Spanish, no country code
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
       accentColor: Colors.amber,
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5:TextStyle(color: Colors.blue,fontSize: 24,fontWeight: FontWeight.bold),
            headline6:TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold)
        ),
        primarySwatch: Colors.blue,
      ),
      home: Categoryscreen(),
     initialRoute: Categoryscreen.id,
     routes: {
        Categorytrip.id:(context)=>Categorytrip()
     },
    );
  }
}


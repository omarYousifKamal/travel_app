import 'package:flutter/material.dart';
import 'package:travling_app/screens/catagories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travling_app/screens/category_trips_screen.dart';

//this is a new code
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final screenRoute = '/category-trips';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Travel Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold),
              headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold),
            ),
      ),
      //home: CatagoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CatagoriesScreen(),
        //به دلى خۆمان ناوه‌كی ده‌ده‌ینێ وه‌ك دۆمه‌ینه
        '/category-trips': (ctx) => CategoryTripsScreen(),
      },
    );
  }
}

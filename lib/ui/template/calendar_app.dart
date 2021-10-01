import 'package:calendar/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../screens/home/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        // appBarTheme: const AppBarTheme(
        //   backgroundColor: Colors.white,
        // ),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
    );
  }
}

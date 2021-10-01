import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './ui/template/calendar_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ),
  );
  runApp(CalendarApp());
}

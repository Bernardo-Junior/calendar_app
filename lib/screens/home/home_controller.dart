import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController {
  final selectedDay = ValueNotifier<DateTime>(DateTime.now());
  final calendarFormat = ValueNotifier<CalendarFormat>(CalendarFormat.week);
  final focusedMouth = ValueNotifier<DateTime>(DateTime.now());
  final DateTime focusedDay = DateTime.now();

  void updateSelectedDay(DateTime newValue) {
    if (selectedDay.value == newValue) {
      return;
    }
    selectedDay.value = newValue;
  }

  void udpdateCalendarFormat() {
    if (calendarFormat.value == CalendarFormat.week) {
      calendarFormat.value = CalendarFormat.month;
    } else {
      calendarFormat.value = CalendarFormat.week;
    }
  }

  void updateMonth(DateTime newDate) {
    focusedMouth.value = newDate;
  }
}

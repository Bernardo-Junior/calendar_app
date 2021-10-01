import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarHeader extends StatelessWidget {
  final CalendarFormat calendarFormat = CalendarFormat.week;
  DateTime? _selectedDay;
  final DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Container(
          decoration: const BoxDecoration(color: Colors.transparent),
          padding: const EdgeInsets.only(bottom: 8),
          height: 200,
          child: TableCalendar(
            locale: 'pt_BR',
            availableCalendarFormats: const {
              CalendarFormat.week: 'Semana',
              CalendarFormat.month: 'Mês',
            },
            startingDayOfWeek: StartingDayOfWeek.sunday,
            calendarStyle: const CalendarStyle(
              cellMargin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 10,
              ),
              defaultDecoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              holidayDecoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            calendarFormat: calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) async {
              // _selectedDay = selectedDay;
            },
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _selectedDay ?? _focusedDay,
            // daysOfWeekStyle: ,
          ),
        );
      },
    );
  }
}

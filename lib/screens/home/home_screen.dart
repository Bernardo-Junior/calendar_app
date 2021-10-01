import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/header_calendar.dart';

class HomeScreen extends StatelessWidget {
  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Agenda'),
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Row(
            children: [
              Text(
                DateFormat('MMMM', 'pt_BR').format(date).toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.black,
              )
            ],
          ),
        ),
      ],
    );

    final avaliableHeight = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: appBar,
      body: CalendarHeader(),
    );
  }
}

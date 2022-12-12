import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CelenderPage extends StatelessWidget {
  const CelenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCalendar(
          view: CalendarView.month,
        ),
      ),
    );
  }
}

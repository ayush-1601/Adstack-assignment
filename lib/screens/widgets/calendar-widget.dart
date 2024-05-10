import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/constant.dart';

class Calender extends StatelessWidget {
  const Calender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();

    return Container(
        padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18)),
        child: Expanded(
          child: TableCalendar(
              daysOfWeekHeight: 12,
              daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle: TextStyle(fontSize: 8),
                  weekendStyle: TextStyle(fontSize: 8)),
              headerStyle: const HeaderStyle(
                headerPadding: EdgeInsets.all(0),
                leftChevronPadding: EdgeInsets.all(2),
                rightChevronPadding: EdgeInsets.all(2),
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: TextStyle(fontSize: 10),
              ),
              calendarStyle: CalendarStyle(
                  todayTextStyle:
                      const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  weekendTextStyle: const TextStyle(
                      color: secondarycolor,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                  outsideTextStyle:
                      const TextStyle(fontSize: 8, color: primaryLightcolor),
                  disabledTextStyle: const TextStyle(fontSize: 8),
                  defaultTextStyle: const TextStyle(
                      color: secondarycolor,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                  tablePadding:
                      const EdgeInsets.only(left: 5, right: 5, bottom: 0),
                  tableBorder: TableBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              rowHeight: 20,
              focusedDay: dateTime,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14)),
        ));
  }
}

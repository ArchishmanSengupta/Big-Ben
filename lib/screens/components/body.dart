import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text("Part Street Kolkata, India | IST",
              style: Theme.of(context).textTheme.bodyText1),
          TimeInHouseAndMinute(),
        ],
      ),
    );
  }
}

class TimeInHouseAndMinute extends StatefulWidget {
  @override
  _TimeInHouseAndMinuteState createState() => _TimeInHouseAndMinuteState();
}

class _TimeInHouseAndMinuteState extends State<TimeInHouseAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hour}:${_timeOfDay.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(width: 5),
        Text(
          _period,
          style: TextStyle(fontSize: getProportionateScreenWidth(18)),
        ),
      ],
    );
  }
}

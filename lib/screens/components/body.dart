import 'package:analog_clock/constants.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

import 'time_in_hour_and_minute.dart';

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
          Clock(),
        ],
      ),
    );
  }
}

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,0),
                  color: kShadowColor.withOpacity(0.14),
                  blurRadius: 64,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:analog_clock/constants.dart';
import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

import 'clock.dart';
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

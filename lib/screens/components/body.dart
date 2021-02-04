import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';

import 'clock.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Part Street Kolkata, India | IST",
                style: Theme.of(context).textTheme.bodyText1),
            TimeInHouseAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SizedBox(
              width: getProportionateScreenWidth(233),
              child: AspectRatio(
                aspectRatio: 1.32,
                child: Container(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

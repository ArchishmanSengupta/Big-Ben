import 'package:analog_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card.dart';
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, AUS",
                    timeZone: "+19 HRS | EST",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: "1:20",
                    period: "AM",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

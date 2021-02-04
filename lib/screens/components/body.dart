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
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).primaryIconTheme.color,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kolkata, India",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: getProportionateScreenWidth(16)),
                      ),
                      SizedBox(height: 5),
                      Text("0 HRS | IST"),
                      Row(
                        children: [
                          Text(
                            "9 : 20",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text("AM"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

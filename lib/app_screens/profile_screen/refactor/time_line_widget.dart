import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: 300,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TimelineTile(
                    alignment: TimelineAlign.center,
                    indicatorStyle:
                        const IndicatorStyle(color: buttonColor, height: 20, width: 20),
                    isFirst: true,
                    endChild: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Text(
                          'Order Placed',
                          style: trackOrderActiveTextStyle
                        )
                      ],
                    ),
                    startChild: Row(
                      children: [
                        const SizedBox(width: 60),
                        const Text(
                          '09:00 am',
                          style: trackOrderActiveTextStyle
                        )
                      ],
                    ),
                  ),
                  TimelineTile(
                    alignment: TimelineAlign.center,
                    indicatorStyle:
                        const IndicatorStyle(color: buttonColor, height: 20, width: 20),
                    beforeLineStyle: const LineStyle(color: buttonColor, thickness: 2),
                    endChild: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Text(
                          'Order Confirmed',
                          style: trackOrderActiveTextStyle
                        )
                      ],
                    ),
                  ),
                  TimelineTile(
                    alignment: TimelineAlign.center,
                    indicatorStyle:
                        const IndicatorStyle(color: buttonColor, height: 20, width: 20),
                    beforeLineStyle: const LineStyle(color: buttonColor, thickness: 2),
                    endChild: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Text(
                          'Order Packed',
                          style:trackOrderActiveTextStyle
                        )
                      ],
                    ),
                    startChild: Row(
                      children: [
                        const SizedBox(width: 60),
                        const Text(
                          '09:10 am',
                          style: trackOrderActiveTextStyle
                        )
                      ],
                    ),
                  ),
                  TimelineTile(
                    alignment: TimelineAlign.center,
                    indicatorStyle:
                        const IndicatorStyle(color: Colors.grey, height: 20, width: 20),
                    beforeLineStyle: const LineStyle(color: Colors.grey, thickness: 2),
                    endChild: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Text(
                          'Out for Delivery',
                          style: trackOrderInActiveTextStyle
                        )
                      ],
                    ),
                  ),
                  TimelineTile(
                    alignment: TimelineAlign.center,
                    indicatorStyle:
                        const IndicatorStyle(color: Colors.grey, height: 20, width: 20),
                    endChild: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Text(
                          'Order Delivered',
                          style: trackOrderInActiveTextStyle
                        )
                      ],
                    ),
                    startChild: Row(
                      children: [
                        const SizedBox(width: 60),
                        const Text(
                          '09:20 am',
                          style: trackOrderInActiveTextStyle
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}
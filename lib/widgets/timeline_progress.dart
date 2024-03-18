import 'package:flutter/material.dart';
import 'package:service_app/config/palette.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineProgress extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final String timeStamp;
  final String title;
  final String description;
  final String id;
  final String estimated;
  const TimelineProgress({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.timeStamp,
    required this.title, required this.description, required this.id, required this.estimated,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      alignment: TimelineAlign.manual,
      beforeLineStyle:
          LineStyle(color: Theme.of(context).primaryColor, thickness: 2),
      afterLineStyle:
          LineStyle(color: Theme.of(context).primaryColor, thickness: 2),
      indicatorStyle: IndicatorStyle(
        width: 10,
        height: 10,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 18),
      ),
      lineXY: 0.2,
      endChild: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(
          right: 20,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            color: Palette.primaryGreen,
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                color: Colors.black.withOpacity(.1),
                spreadRadius: 1,
                offset: const Offset(1, .8),
              ),
            ],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(fontSize: 10),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Progress #$id',
                  style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Palette.serviceGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Estimasi',
                          style:
                              const TextStyle(fontSize: 4, color: Colors.white),
                        ),
                        Text(
                          estimated,
                          style:
                              const TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
      startChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          timeStamp,
          style: const TextStyle(fontSize: 8),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}

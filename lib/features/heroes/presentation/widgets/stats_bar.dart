import 'package:flutter/material.dart';

class StatsBar extends StatelessWidget {
  final String name;
  final int value;
  final Color color;

  const StatsBar({
    super.key,
    required this.name,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          _SegmentedProgressBar(
            value: value,
            color: color,
          ),
        ],
      ),
    );
  }
}

class _SegmentedProgressBar extends StatelessWidget {
  final int value;
  final Color color;
  final int totalSegments;

  const _SegmentedProgressBar({
    required this.value,
    required this.color,
    this.totalSegments = 10,
  });

  @override
  Widget build(BuildContext context) {
    final int activeSegments = (value / 100 * totalSegments).round();

    return Stack(
      children: [
        Row(
          children: List.generate(totalSegments, (index) {
            return Expanded(
              child: Container(
                height: 20,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: index < activeSegments ? color : Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
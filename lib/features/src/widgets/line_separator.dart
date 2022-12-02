import 'package:flutter/material.dart';

enum SeparatorType { vertical, horizontal }

class LineSeparator extends StatelessWidget {
  const LineSeparator({
    Key? key,
    required this.type,
  }) : super(key: key);

  factory LineSeparator.horizontal() =>
      const LineSeparator(type: SeparatorType.horizontal);
  factory LineSeparator.vertical() =>
      const LineSeparator(type: SeparatorType.vertical);

  final SeparatorType type;

  @override
  Widget build(BuildContext context) {
    return type == SeparatorType.vertical
        ? Container(
      width: 1,
      height: double.maxFinite,
      color: Colors.white70,
    )
        : Container(
      height: 1,
      width: double.maxFinite,
      color: Colors.white70,
    );
  }
}
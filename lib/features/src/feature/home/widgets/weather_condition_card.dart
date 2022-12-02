import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/widgets/line_separator.dart';

class WeatherConditionCard extends StatelessWidget {
  const WeatherConditionCard({
    Key? key,
    required this.weatherConditionContent
  }) : super(key: key);

  final List<Widget> weatherConditionContent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        color: const Color(0xFF33415E),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              weatherConditionContent[0],
              Center(child: LineSeparator.vertical()),
              weatherConditionContent[1],
            ],
          ),
        ),
      ),
    );
  }
}
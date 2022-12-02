import 'package:flutter/material.dart';

class WeatherConditionContent extends StatelessWidget {
  const WeatherConditionContent({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 5,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white70
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                value,
                style: const TextStyle(
                    color: Colors.white70
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
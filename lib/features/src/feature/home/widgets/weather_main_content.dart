import 'package:flutter/material.dart';

class WeatherMainContent extends StatelessWidget {
  const WeatherMainContent({
    Key? key,
    required this.cityName,
    required this.temperature,
    required this.icon,
    required this.minTemperature,
    required this.maxTemperature,
    required this.feelTemperature,
    required this.day
  }) : super(key: key);

  final String cityName;
  final int temperature;
  final String icon;
  final int minTemperature;
  final int maxTemperature;
  final int feelTemperature;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.white70,
              size: 20,
            ),
            Text(
              cityName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$temperature°',
              style: const TextStyle(
                fontSize: 100,
                color: Colors.white70,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(width: 10,),
            Text(
              icon,
              style: const TextStyle(
                fontSize: 55,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
                '$maxTemperature° / $minTemperature°, Odczuwalna $feelTemperature°',
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
        Center(
          child: Text(
            day,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
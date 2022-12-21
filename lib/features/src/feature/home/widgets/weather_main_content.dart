import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/feature/home/bloc/home_bloc.dart';
import 'package:pogodynka/features/src/injection/injection.dart';
import 'package:pogodynka/features/src/themes/app_colors.dart';

class WeatherMainContent extends StatelessWidget {
  WeatherMainContent({
    Key? key,
    required this.cityName,
    required this.temperature,
    required this.icon,
    required this.minTemperature,
    required this.maxTemperature,
    required this.feelTemperature,
    required this.day,
    required this.onRefreshPressed,
    required this.isLoading,
  }) : super(key: key);

  final String cityName;
  final int temperature;
  final String icon;
  final int minTemperature;
  final int maxTemperature;
  final int feelTemperature;
  final String day;
  final VoidCallback onRefreshPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: AppColors.almostWhite,
                    size: 20,
                  ),
                  Text(
                    cityName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.almostWhite,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: onRefreshPressed,
                  child: isLoading ?
                  const SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(),
                  )
                      :  const Icon(
                    Icons.refresh,
                    color: AppColors.almostWhite,
                  ),
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
                color: AppColors.almostWhite,
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
              color: AppColors.almostWhite,
            ),
          ),
        ),
        Center(
          child: Text(
            day,
            style: const TextStyle(
              color: AppColors.almostWhite,
            ),
          ),
        ),
      ],
    );
  }
}
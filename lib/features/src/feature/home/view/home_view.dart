import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/feature/home/widgets/city_weather_card.dart';
import 'package:pogodynka/features/src/feature/home/widgets/weather_condition_card.dart';
import 'package:pogodynka/features/src/feature/home/widgets/weather_condition_content.dart';
import 'package:pogodynka/features/src/feature/home/widgets/weather_main_content.dart';
import 'package:pogodynka/features/src/themes/app_colors.dart';
import 'package:pogodynka/features/src/widgets/line_separator.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
    required this.cityName,
    required this.temperature,
    required this.icon,
    required this.minTemperature,
    required this.maxTemperature,
    required this.feelTemperature,
    required this.day,
    required this.humidity,
    required this.clouds,
    required this.pressure,
    required this.wind,
    required this.onCityPressed,
    required this.onRefreshPressed,
    required this.isLoading,
    this.cityWeather,
  }) : super(key: key);

  final String cityName;
  final int temperature;
  final String icon;
  final int minTemperature;
  final int maxTemperature;
  final int feelTemperature;
  final String day;
  final int humidity;
  final double wind;
  final int clouds;
  final int pressure;
  final VoidCallback? onCityPressed;
  final VoidCallback onRefreshPressed;
  final Weather? cityWeather;
  final bool isLoading;

  factory HomeView.empty() =>  HomeView(
        cityName: 'Twoja lokalizacja',
        temperature: 0,
        icon: ' ',
        minTemperature: 0,
        maxTemperature: 0,
        feelTemperature: 0,
        day: '???',
        humidity: 0,
        clouds: 0,
        pressure: 0,
        wind: 0,
        onCityPressed: (){},
        onRefreshPressed: (){},
        isLoading: true,
      );

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      children: [
        WeatherMainContent(
          cityName: cityName,
          temperature: temperature,
          icon: icon,
          minTemperature: minTemperature,
          maxTemperature: maxTemperature,
          feelTemperature: feelTemperature,
          day: day,
          onRefreshPressed: onRefreshPressed,
          isLoading: isLoading,
        ),
        const SizedBox(height: 25,),
        WeatherConditionCard(
            weatherConditionContent: [
              WeatherConditionContent(
                icon: const Icon(
                  Icons.water_drop_sharp,
                  color: AppColors.appBlue,
                ),
                title: 'Wilgotność',
                value: '$humidity%',
              ),
              WeatherConditionContent(
                icon: const Icon(
                  Icons.cloud,
                  color: AppColors.almostWhite,
                ),
                title: 'Zachmurzenie',
                value: '$clouds%',
              ),
            ],
        ),
        const SizedBox(height: 10,),
        WeatherConditionCard(
            weatherConditionContent: [
              WeatherConditionContent(
                icon: const Icon(
                  Icons.wind_power,
                  color: AppColors.almostWhite,
                  size: 25,
                ),
                title: 'Wiatr',
                value: '$wind km/h',
              ),
              WeatherConditionContent(
                icon: SizedBox(
                  height: 35,
                  child: Image.asset('assets/pressure.png'),
                ),
                title: 'Ciśnienie',
                value: '$pressure hPa',
              ),
            ]
        ),
        const SizedBox(height: 10,),
        LineSeparator.horizontal(),
        const SizedBox(height: 10,),
        CityWeatherCard(
          onCityPressed: onCityPressed!,
          cityWeather: cityWeather,
        )
      ],
    );
  }
}



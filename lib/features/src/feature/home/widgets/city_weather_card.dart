import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/feature/home/bloc/home_bloc.dart';
import 'package:pogodynka/features/src/injection/injection.dart';
import 'package:pogodynka/features/src/themes/app_colors.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

class CityWeatherCard extends StatelessWidget {
  const CityWeatherCard(
      {Key? key, required this.onCityPressed, this.cityWeather})
      : super(key: key);

  final VoidCallback onCityPressed;
  final Weather? cityWeather;

  @override
  Widget build(BuildContext context) {
    if (cityWeather != null) {
      return _CityWeatherCard(
        onCityPressed: onCityPressed,
        cityName: cityWeather!.cityName!,
        icon: getIt.get<HomeBloc>().state.getWeatherIcon(cityWeather!),
        temperature: cityWeather!.temperature!,
        feelTemperature: cityWeather!.feelTemp!,
        clouds: cityWeather!.clouds!,
      );
    }
    return _EmptyCityWeatherCard(
      onCityPressed: onCityPressed,
    );
  }
}

class _CityWeatherCard extends StatelessWidget {
  const _CityWeatherCard({
    Key? key,
    required this.onCityPressed,
    required this.cityName,
    required this.icon,
    required this.temperature,
    required this.feelTemperature,
    required this.clouds,
  }) : super(key: key);

  final VoidCallback onCityPressed;
  final String cityName;
  final String icon;
  final int temperature;
  final int feelTemperature;
  final int clouds;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onCityPressed,
      child: SizedBox(
        height: 100,
        child: Card(
          color: AppColors.cardColor,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cityName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.almostWhite,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        icon,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Temperatura',
                          style: TextStyle(
                              color: AppColors.almostWhite
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                            '$temperature°',
                          style: const TextStyle(
                              color: AppColors.almostWhite,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Odczuwalna ',
                          style: TextStyle(
                              color: AppColors.almostWhite
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          '$feelTemperature°',
                          style: const TextStyle(
                              color: AppColors.almostWhite
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Zachmurzenie ',
                          style: TextStyle(
                              color: AppColors.almostWhite
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          '$clouds%',
                          style: const TextStyle(
                              color: AppColors.almostWhite
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyCityWeatherCard extends StatelessWidget {
  const _EmptyCityWeatherCard({
    Key? key,
    required this.onCityPressed,
  }) : super(key: key);

  final VoidCallback onCityPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        color: const Color(0xFF33415E),
        elevation: 0,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextButton(
              onPressed: onCityPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 20,
                  ),
                  Text(
                    'Dodaj inną lokalizacje',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

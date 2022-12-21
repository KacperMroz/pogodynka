import 'package:dartz/dartz.dart';
import 'package:pogodynka/services/models/location/location.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

abstract class ApiService{
  Future<Either<Error, Weather>> getWeatherByLocationOpenWeather(Location location);

  Future<Either<Error, Weather>> getWeatherByLocationOpenMeteo(Location location);

  Future<Either<Error, Weather>> getWeatherByLocationTomorrowApi(Location location);

  Future<Either<Error, Weather>> getWeatherByCity(String cityName);
}
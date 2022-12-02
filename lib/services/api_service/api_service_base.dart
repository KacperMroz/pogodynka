import 'package:dartz/dartz.dart';
import 'package:pogodynka/services/models/location/location.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

abstract class ApiService{
  Future<Either<Error, Weather>> getWeatherByLocation(Location location);

  Future<Either<Error, Weather>> getWeatherByCity(String cityName);
}
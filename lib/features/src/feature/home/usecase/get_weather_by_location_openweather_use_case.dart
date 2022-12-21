import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pogodynka/services/api_service/api_service_base.dart';
import 'package:pogodynka/services/models/location/location.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

@injectable
class GetWeatherByLocationOpenWeatherUseCase{
  GetWeatherByLocationOpenWeatherUseCase(this._apiService);
  final ApiService _apiService;

  Future<Either<Error, Weather>> call(Location location) async =>
      (await _apiService.getWeatherByLocationOpenWeather(location));

}
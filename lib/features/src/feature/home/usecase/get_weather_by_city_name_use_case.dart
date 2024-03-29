import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pogodynka/services/api_service/api_service_base.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

@injectable
class GetWeatherByCityNameUseCase{
  GetWeatherByCityNameUseCase(this._apiService);
  final ApiService _apiService;

  Future<Either<Error, Weather>> call(String cityName) async =>
      (await _apiService.getWeatherByCity(cityName));
}
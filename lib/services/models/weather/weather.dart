import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather{
  const factory Weather({
    required int temperature,
    required int condition,
    required String cityName,
    required int minTemp,
    required int maxTemp,
    required int feelTemp,
    required int humidity,
    required double wind,
    required int clouds,
    required int pressure,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> data) => _$WeatherFromJson(data);
}
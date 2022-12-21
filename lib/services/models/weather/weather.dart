import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather{
  const factory Weather({
    required int? temperature,
    int? condition,
    String? cityName,
    int? minTemp,
    int? maxTemp,
    int? feelTemp,
    int? humidity,
    double? wind,
    int? clouds,
    int? pressure,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> data) => _$WeatherFromJson(data);
}
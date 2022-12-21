// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      temperature: json['temperature'] as int?,
      condition: json['condition'] as int?,
      cityName: json['cityName'] as String?,
      minTemp: json['minTemp'] as int?,
      maxTemp: json['maxTemp'] as int?,
      feelTemp: json['feelTemp'] as int?,
      humidity: json['humidity'] as int?,
      wind: (json['wind'] as num?)?.toDouble(),
      clouds: json['clouds'] as int?,
      pressure: json['pressure'] as int?,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'condition': instance.condition,
      'cityName': instance.cityName,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'feelTemp': instance.feelTemp,
      'humidity': instance.humidity,
      'wind': instance.wind,
      'clouds': instance.clouds,
      'pressure': instance.pressure,
    };

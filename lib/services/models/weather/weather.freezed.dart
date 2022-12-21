// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int? get temperature => throw _privateConstructorUsedError;
  int? get condition => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  int? get minTemp => throw _privateConstructorUsedError;
  int? get maxTemp => throw _privateConstructorUsedError;
  int? get feelTemp => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get wind => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {int? temperature,
      int? condition,
      String? cityName,
      int? minTemp,
      int? maxTemp,
      int? feelTemp,
      int? humidity,
      double? wind,
      int? clouds,
      int? pressure});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? condition = freezed,
    Object? cityName = freezed,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? feelTemp = freezed,
    Object? humidity = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? pressure = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      minTemp: freezed == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemp: freezed == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      feelTemp: freezed == feelTemp
          ? _value.feelTemp
          : feelTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? temperature,
      int? condition,
      String? cityName,
      int? minTemp,
      int? maxTemp,
      int? feelTemp,
      int? humidity,
      double? wind,
      int? clouds,
      int? pressure});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? condition = freezed,
    Object? cityName = freezed,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? feelTemp = freezed,
    Object? humidity = freezed,
    Object? wind = freezed,
    Object? clouds = freezed,
    Object? pressure = freezed,
  }) {
    return _then(_$_Weather(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as int?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      minTemp: freezed == minTemp
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemp: freezed == maxTemp
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      feelTemp: freezed == feelTemp
          ? _value.feelTemp
          : feelTemp // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as double?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.temperature,
      this.condition,
      this.cityName,
      this.minTemp,
      this.maxTemp,
      this.feelTemp,
      this.humidity,
      this.wind,
      this.clouds,
      this.pressure});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final int? temperature;
  @override
  final int? condition;
  @override
  final String? cityName;
  @override
  final int? minTemp;
  @override
  final int? maxTemp;
  @override
  final int? feelTemp;
  @override
  final int? humidity;
  @override
  final double? wind;
  @override
  final int? clouds;
  @override
  final int? pressure;

  @override
  String toString() {
    return 'Weather(temperature: $temperature, condition: $condition, cityName: $cityName, minTemp: $minTemp, maxTemp: $maxTemp, feelTemp: $feelTemp, humidity: $humidity, wind: $wind, clouds: $clouds, pressure: $pressure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.minTemp, minTemp) || other.minTemp == minTemp) &&
            (identical(other.maxTemp, maxTemp) || other.maxTemp == maxTemp) &&
            (identical(other.feelTemp, feelTemp) ||
                other.feelTemp == feelTemp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature, condition, cityName,
      minTemp, maxTemp, feelTemp, humidity, wind, clouds, pressure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final int? temperature,
      final int? condition,
      final String? cityName,
      final int? minTemp,
      final int? maxTemp,
      final int? feelTemp,
      final int? humidity,
      final double? wind,
      final int? clouds,
      final int? pressure}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  int? get temperature;
  @override
  int? get condition;
  @override
  String? get cityName;
  @override
  int? get minTemp;
  @override
  int? get maxTemp;
  @override
  int? get feelTemp;
  @override
  int? get humidity;
  @override
  double? get wind;
  @override
  int? get clouds;
  @override
  int? get pressure;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

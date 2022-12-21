// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() refreshWeather,
    required TResult Function(String cityName) getCityWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? refreshWeather,
    TResult? Function(String cityName)? getCityWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? refreshWeather,
    TResult Function(String cityName)? getCityWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RefreshWeather value) refreshWeather,
    required TResult Function(GetCityWeather value) getCityWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(RefreshWeather value)? refreshWeather,
    TResult? Function(GetCityWeather value)? getCityWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RefreshWeather value)? refreshWeather,
    TResult Function(GetCityWeather value)? getCityWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$Initialize>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'HomeEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() refreshWeather,
    required TResult Function(String cityName) getCityWeather,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? refreshWeather,
    TResult? Function(String cityName)? getCityWeather,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? refreshWeather,
    TResult Function(String cityName)? getCityWeather,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RefreshWeather value) refreshWeather,
    required TResult Function(GetCityWeather value) getCityWeather,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(RefreshWeather value)? refreshWeather,
    TResult? Function(GetCityWeather value)? getCityWeather,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RefreshWeather value)? refreshWeather,
    TResult Function(GetCityWeather value)? getCityWeather,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HomeEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$RefreshWeatherCopyWith<$Res> {
  factory _$$RefreshWeatherCopyWith(
          _$RefreshWeather value, $Res Function(_$RefreshWeather) then) =
      __$$RefreshWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshWeatherCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshWeather>
    implements _$$RefreshWeatherCopyWith<$Res> {
  __$$RefreshWeatherCopyWithImpl(
      _$RefreshWeather _value, $Res Function(_$RefreshWeather) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshWeather implements RefreshWeather {
  const _$RefreshWeather();

  @override
  String toString() {
    return 'HomeEvent.refreshWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshWeather);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() refreshWeather,
    required TResult Function(String cityName) getCityWeather,
  }) {
    return refreshWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? refreshWeather,
    TResult? Function(String cityName)? getCityWeather,
  }) {
    return refreshWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? refreshWeather,
    TResult Function(String cityName)? getCityWeather,
    required TResult orElse(),
  }) {
    if (refreshWeather != null) {
      return refreshWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RefreshWeather value) refreshWeather,
    required TResult Function(GetCityWeather value) getCityWeather,
  }) {
    return refreshWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(RefreshWeather value)? refreshWeather,
    TResult? Function(GetCityWeather value)? getCityWeather,
  }) {
    return refreshWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RefreshWeather value)? refreshWeather,
    TResult Function(GetCityWeather value)? getCityWeather,
    required TResult orElse(),
  }) {
    if (refreshWeather != null) {
      return refreshWeather(this);
    }
    return orElse();
  }
}

abstract class RefreshWeather implements HomeEvent {
  const factory RefreshWeather() = _$RefreshWeather;
}

/// @nodoc
abstract class _$$GetCityWeatherCopyWith<$Res> {
  factory _$$GetCityWeatherCopyWith(
          _$GetCityWeather value, $Res Function(_$GetCityWeather) then) =
      __$$GetCityWeatherCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityName});
}

/// @nodoc
class __$$GetCityWeatherCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCityWeather>
    implements _$$GetCityWeatherCopyWith<$Res> {
  __$$GetCityWeatherCopyWithImpl(
      _$GetCityWeather _value, $Res Function(_$GetCityWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
  }) {
    return _then(_$GetCityWeather(
      null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCityWeather implements GetCityWeather {
  const _$GetCityWeather(this.cityName);

  @override
  final String cityName;

  @override
  String toString() {
    return 'HomeEvent.getCityWeather(cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCityWeather &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCityWeatherCopyWith<_$GetCityWeather> get copyWith =>
      __$$GetCityWeatherCopyWithImpl<_$GetCityWeather>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() refreshWeather,
    required TResult Function(String cityName) getCityWeather,
  }) {
    return getCityWeather(cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? refreshWeather,
    TResult? Function(String cityName)? getCityWeather,
  }) {
    return getCityWeather?.call(cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? refreshWeather,
    TResult Function(String cityName)? getCityWeather,
    required TResult orElse(),
  }) {
    if (getCityWeather != null) {
      return getCityWeather(cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RefreshWeather value) refreshWeather,
    required TResult Function(GetCityWeather value) getCityWeather,
  }) {
    return getCityWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(RefreshWeather value)? refreshWeather,
    TResult? Function(GetCityWeather value)? getCityWeather,
  }) {
    return getCityWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RefreshWeather value)? refreshWeather,
    TResult Function(GetCityWeather value)? getCityWeather,
    required TResult orElse(),
  }) {
    if (getCityWeather != null) {
      return getCityWeather(this);
    }
    return orElse();
  }
}

abstract class GetCityWeather implements HomeEvent {
  const factory GetCityWeather(final String cityName) = _$GetCityWeather;

  String get cityName;
  @JsonKey(ignore: true)
  _$$GetCityWeatherCopyWith<_$GetCityWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  Weather? get openWeather => throw _privateConstructorUsedError;
  Weather? get meteoWether => throw _privateConstructorUsedError;
  Weather? get tomorrowWeather => throw _privateConstructorUsedError;
  Weather? get finalWeather => throw _privateConstructorUsedError;
  Weather? get cityWeather => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Weather? openWeather,
      Weather? meteoWether,
      Weather? tomorrowWeather,
      Weather? finalWeather,
      Weather? cityWeather,
      bool isLoading,
      Error? error});

  $WeatherCopyWith<$Res>? get openWeather;
  $WeatherCopyWith<$Res>? get meteoWether;
  $WeatherCopyWith<$Res>? get tomorrowWeather;
  $WeatherCopyWith<$Res>? get finalWeather;
  $WeatherCopyWith<$Res>? get cityWeather;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openWeather = freezed,
    Object? meteoWether = freezed,
    Object? tomorrowWeather = freezed,
    Object? finalWeather = freezed,
    Object? cityWeather = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      openWeather: freezed == openWeather
          ? _value.openWeather
          : openWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      meteoWether: freezed == meteoWether
          ? _value.meteoWether
          : meteoWether // ignore: cast_nullable_to_non_nullable
              as Weather?,
      tomorrowWeather: freezed == tomorrowWeather
          ? _value.tomorrowWeather
          : tomorrowWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      finalWeather: freezed == finalWeather
          ? _value.finalWeather
          : finalWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      cityWeather: freezed == cityWeather
          ? _value.cityWeather
          : cityWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get openWeather {
    if (_value.openWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.openWeather!, (value) {
      return _then(_value.copyWith(openWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get meteoWether {
    if (_value.meteoWether == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.meteoWether!, (value) {
      return _then(_value.copyWith(meteoWether: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get tomorrowWeather {
    if (_value.tomorrowWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.tomorrowWeather!, (value) {
      return _then(_value.copyWith(tomorrowWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get finalWeather {
    if (_value.finalWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.finalWeather!, (value) {
      return _then(_value.copyWith(finalWeather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get cityWeather {
    if (_value.cityWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.cityWeather!, (value) {
      return _then(_value.copyWith(cityWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Weather? openWeather,
      Weather? meteoWether,
      Weather? tomorrowWeather,
      Weather? finalWeather,
      Weather? cityWeather,
      bool isLoading,
      Error? error});

  @override
  $WeatherCopyWith<$Res>? get openWeather;
  @override
  $WeatherCopyWith<$Res>? get meteoWether;
  @override
  $WeatherCopyWith<$Res>? get tomorrowWeather;
  @override
  $WeatherCopyWith<$Res>? get finalWeather;
  @override
  $WeatherCopyWith<$Res>? get cityWeather;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openWeather = freezed,
    Object? meteoWether = freezed,
    Object? tomorrowWeather = freezed,
    Object? finalWeather = freezed,
    Object? cityWeather = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_HomeState(
      openWeather: freezed == openWeather
          ? _value.openWeather
          : openWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      meteoWether: freezed == meteoWether
          ? _value.meteoWether
          : meteoWether // ignore: cast_nullable_to_non_nullable
              as Weather?,
      tomorrowWeather: freezed == tomorrowWeather
          ? _value.tomorrowWeather
          : tomorrowWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      finalWeather: freezed == finalWeather
          ? _value.finalWeather
          : finalWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      cityWeather: freezed == cityWeather
          ? _value.cityWeather
          : cityWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState {
  _$_HomeState(
      {this.openWeather,
      this.meteoWether,
      this.tomorrowWeather,
      this.finalWeather,
      this.cityWeather,
      this.isLoading = true,
      this.error})
      : super._();

  @override
  final Weather? openWeather;
  @override
  final Weather? meteoWether;
  @override
  final Weather? tomorrowWeather;
  @override
  final Weather? finalWeather;
  @override
  final Weather? cityWeather;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Error? error;

  @override
  String toString() {
    return 'HomeState(openWeather: $openWeather, meteoWether: $meteoWether, tomorrowWeather: $tomorrowWeather, finalWeather: $finalWeather, cityWeather: $cityWeather, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.openWeather, openWeather) ||
                other.openWeather == openWeather) &&
            (identical(other.meteoWether, meteoWether) ||
                other.meteoWether == meteoWether) &&
            (identical(other.tomorrowWeather, tomorrowWeather) ||
                other.tomorrowWeather == tomorrowWeather) &&
            (identical(other.finalWeather, finalWeather) ||
                other.finalWeather == finalWeather) &&
            (identical(other.cityWeather, cityWeather) ||
                other.cityWeather == cityWeather) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, openWeather, meteoWether,
      tomorrowWeather, finalWeather, cityWeather, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  factory _HomeState(
      {final Weather? openWeather,
      final Weather? meteoWether,
      final Weather? tomorrowWeather,
      final Weather? finalWeather,
      final Weather? cityWeather,
      final bool isLoading,
      final Error? error}) = _$_HomeState;
  _HomeState._() : super._();

  @override
  Weather? get openWeather;
  @override
  Weather? get meteoWether;
  @override
  Weather? get tomorrowWeather;
  @override
  Weather? get finalWeather;
  @override
  Weather? get cityWeather;
  @override
  bool get isLoading;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

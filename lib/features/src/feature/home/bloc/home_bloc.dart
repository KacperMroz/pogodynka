import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:pogodynka/features/src/feature/home/usecase/get_weather_by_city_name_use_case.dart';
import 'package:pogodynka/features/src/feature/home/usecase/get_weather_by_location_use_case.dart';
import 'package:pogodynka/features/src/feature/splash/bloc/splash_bloc.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._getWeatherByLocationUseCase,
    this._getWeatherByCityNameUseCase,
    this._splashBloc,
  ) : super(HomeState.initial()) {
    on<Initialize>(_initialize);
    on<GetCityWeather>(_getCityWeather);
  }

  final GetWeatherByLocationUseCase _getWeatherByLocationUseCase;
  final GetWeatherByCityNameUseCase _getWeatherByCityNameUseCase;
  final SplashBloc _splashBloc;

  Future<void> _initialize(event, emit) async {
    (await _getWeatherByLocationUseCase(_splashBloc.state.location!)).fold(
      (error) => emit(
        HomeState(
          isLoading: false,
          error: error,
        ),
      ),
      (weather) => emit(HomeState(isLoading: false, weather: weather)),
    );
  }

  Future<void> _getCityWeather(GetCityWeather event, emit) async {
    (await _getWeatherByCityNameUseCase(event.cityName)).fold(
      (error) => emit(
        HomeState(
          isLoading: false,
          error: error,
        ),
      ),
      (weather) => emit(
        state.copyWith(cityWeather: weather),
      ),
    );
  }
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = Initialize;

  const factory HomeEvent.getCityWeather(String cityName) = GetCityWeather;
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    Weather? weather,
    Weather? cityWeather,
    @Default(true) bool isLoading,
    Error? error,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => HomeState(isLoading: true);

  String getWeatherIcon(Weather weather) {
    int condition = weather.condition;
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '☁️';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getDay() {
    String day = DateFormat('EEEE').format(DateTime.now());
    switch (day) {
      case 'Monday':
        return 'Poniedziałek';
      case 'Tuesday':
        return 'Wtorek';
      case 'Wednesday':
        return 'Środa';
      case 'Thursday':
        return 'Czwartek';
      case 'Friday':
        return 'Piątek';
      case 'Saturday':
        return 'Sobota';
      case 'Sunday':
        return 'Niedziela';
      default:
        return '???';
    }
  }
}

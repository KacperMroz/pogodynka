import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:pogodynka/features/src/feature/home/usecase/get_weather_by_city_name_use_case.dart';
import 'package:pogodynka/features/src/feature/home/usecase/get_weather_by_location_open_meteo_use_case.dart';
import 'package:pogodynka/features/src/feature/home/usecase/get_weather_by_location_openweather_use_case.dart';
import 'package:pogodynka/features/src/feature/home/usecase/get_weather_by_location_tomorrow_api_use_case.dart';
import 'package:pogodynka/features/src/feature/splash/bloc/splash_bloc.dart';
import 'package:pogodynka/services/models/weather/weather.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._getWeatherByLocationOpenWeatherUseCase,
    this._getWeatherByLocationMeteoUseCase,
    this._getWeatherByCityNameUseCase,
    this._getWeatherByLocationTomorrowApiUseCase,
    this._splashBloc,
  ) : super(HomeState.initial()) {
    on<Initialize>(_initialize);
    on<RefreshWeather>(_refreshWeather);
    on<GetCityWeather>(_getCityWeather);
  }

  final GetWeatherByLocationOpenWeatherUseCase _getWeatherByLocationOpenWeatherUseCase;
  final GetWeatherByLocationMeteoUseCase _getWeatherByLocationMeteoUseCase;
  final GetWeatherByLocationTomorrowApiUseCase _getWeatherByLocationTomorrowApiUseCase;
  final GetWeatherByCityNameUseCase _getWeatherByCityNameUseCase;
  final SplashBloc _splashBloc;

  Future<void> _initialize(event, emit) async {
    (await _getWeatherByLocationOpenWeatherUseCase(_splashBloc.state.location!)).fold(
      (error) => emit(
        HomeState(
          isLoading: false,
          error: error,
        ),
      ),
      (weather) => emit(state.copyWith(openWeather: weather),),
    );

    (await _getWeatherByLocationMeteoUseCase(_splashBloc.state.location!)).fold(
          (error) => emit(
        HomeState(
          isLoading: false,
          error: error,
        ),
      ),
          (weather) => emit(state.copyWith(meteoWether: weather),),
    );

    (await _getWeatherByLocationTomorrowApiUseCase(_splashBloc.state.location!)).fold(
          (error) => emit(
        HomeState(
          isLoading: false,
          error: error,
        ),
      ),
          (weather) => emit(state.copyWith(tomorrowWeather: weather),),
    );

    _getFinalWeather();
  }

  Future<void> _getFinalWeather() async {
    Weather finalWeather = Weather(
        temperature: (state.openWeather!.temperature! + state.meteoWether!.temperature! + state.tomorrowWeather!.temperature!)~/3,
        condition: state.openWeather!.condition,
        cityName: state.openWeather!.cityName,
        minTemp: state.openWeather!.minTemp,
        maxTemp: state.openWeather!.maxTemp,
        feelTemp: (state.openWeather!.feelTemp! + state.tomorrowWeather!.feelTemp!)~/2,
        humidity: (state.openWeather!.humidity! + state.tomorrowWeather!.humidity!)~/2,
        wind: ((state.openWeather!.wind! + state.meteoWether!.wind! + state.tomorrowWeather!.wind!)/3).roundToDouble(),
        clouds: state.openWeather!.clouds,
        pressure: (state.openWeather!.pressure! + state.tomorrowWeather!.pressure!)~/2,
    );
    emit(state.copyWith(finalWeather: finalWeather, isLoading: false));
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

  Future<void> _refreshWeather(event, emit) async {
    emit(state.copyWith(isLoading: true));
    await _splashBloc.getNewLocation();
    await _initialize(event, emit);
  }
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = Initialize;

  const factory HomeEvent.refreshWeather() = RefreshWeather;

  const factory HomeEvent.getCityWeather(String cityName) = GetCityWeather;
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    Weather? openWeather,
    Weather? meteoWether,
    Weather? tomorrowWeather,
    Weather? finalWeather,
    Weather? cityWeather,
    @Default(true) bool isLoading,
    Error? error,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => HomeState(isLoading: true);

  String getWeatherIcon(Weather weather) {
    int condition = weather.condition!;
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

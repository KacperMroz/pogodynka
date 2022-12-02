// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../services/api_service/api_service.dart' as _i4;
import '../../../services/api_service/api_service_base.dart' as _i3;
import '../../../services/location_service/location_service.dart' as _i8;
import '../../../services/location_service/location_service_base.dart' as _i7;
import '../feature/home/bloc/home_bloc.dart' as _i11;
import '../feature/home/usecase/get_weather_by_city_name_use_case.dart' as _i5;
import '../feature/home/usecase/get_weather_by_location_use_case.dart' as _i6;
import '../feature/splash/bloc/splash_bloc.dart' as _i10;
import '../feature/splash/usecase/get_location_use_case.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ApiService>(() => _i4.ApiServiceImpl());
  gh.factory<_i5.GetWeatherByCityNameUseCase>(
      () => _i5.GetWeatherByCityNameUseCase(get<_i3.ApiService>()));
  gh.factory<_i6.GetWeatherByLocationUseCase>(
      () => _i6.GetWeatherByLocationUseCase(get<_i3.ApiService>()));
  gh.lazySingleton<_i7.LocationService>(() => _i8.LocationServiceImpl());
  gh.factory<_i9.GetLocationUseCase>(
      () => _i9.GetLocationUseCase(get<_i7.LocationService>()));
  gh.singleton<_i10.SplashBloc>(_i10.SplashBloc(get<_i9.GetLocationUseCase>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(
        get<_i6.GetWeatherByLocationUseCase>(),
        get<_i5.GetWeatherByCityNameUseCase>(),
        get<_i10.SplashBloc>(),
      ));
  return get;
}

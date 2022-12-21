import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pogodynka/features/src/feature/splash/usecase/get_location_use_case.dart';
import 'package:pogodynka/services/models/location/location.dart';

part 'splash_bloc.freezed.dart';

@singleton
class SplashBloc extends Bloc<SplashEvent, SplashState>{
  SplashBloc(
        this._getLocationUseCase
      ) : super(SplashState.initial()){
    on<Initialize>(_initialize);
  }

  final GetLocationUseCase _getLocationUseCase;

  Future<void> _initialize(event, emit) async{
    (await _getLocationUseCase()).fold(
        (error) => emit(SplashState.initial()),
        (location) => _emitSuccess(location),
    );
  }

  Future<void> _emitSuccess(Location location) async {
    Future.delayed(
      const Duration(seconds: 4),
        () => emit(SplashState.success(location)),
    );
  }

  Future<void> getNewLocation() async {
    (await _getLocationUseCase()).fold(
          (error) => print('error'),
          (location) => emit(SplashState.success(location)),
    );
  }

}

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initialize() = Initialize;
}

@freezed
class SplashState with _$SplashState{
  const factory SplashState({
    @Default(true) bool isLoading,
    Location? location,
  }) = _SplashState;

  const SplashState._();

  factory SplashState.initial() => const SplashState(isLoading: true);

  factory SplashState.success(Location location) => SplashState(location: location, isLoading: false);

}
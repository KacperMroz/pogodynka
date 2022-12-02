import 'package:injectable/injectable.dart';
import 'package:pogodynka/services/location_service/location_service_base.dart';
import 'package:pogodynka/services/models/location/location.dart';
import 'package:dartz/dartz.dart';

@injectable
class GetLocationUseCase{
  const GetLocationUseCase(this._locationService);

  final LocationService _locationService;

  Future<Either<Error, Location>> call() async =>
      (await _locationService.getLocation());
}
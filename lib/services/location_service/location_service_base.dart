import 'package:dartz/dartz.dart';
import 'package:pogodynka/services/models/location/location.dart';

abstract class LocationService{
  Future<Either<Error, Location>> getLocation();
}
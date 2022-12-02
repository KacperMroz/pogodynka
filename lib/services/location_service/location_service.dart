import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pogodynka/services/location_service/location_service_base.dart';
import 'package:pogodynka/services/models/location/location.dart';
import 'package:geolocator/geolocator.dart';

@LazySingleton(as: LocationService)
class LocationServiceImpl extends LocationService{

  @override
  Future<Either<Error, Location>> getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(Error());
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return left(Error());
    }
    Position position = await Geolocator.getCurrentPosition(
      forceAndroidLocationManager: true,
      desiredAccuracy: LocationAccuracy.low,
    );
    Location location = Location(position.latitude, position.longitude);
    return right(location);
  }

}
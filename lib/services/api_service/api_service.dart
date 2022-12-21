import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pogodynka/services/api_service/api_service_base.dart';
import 'package:pogodynka/services/models/weather/weather.dart';
import 'package:pogodynka/services/models/location/location.dart';
import 'package:http/http.dart' as http;

const apiKey = '1bc373ca15b2f1e7bc6eee6e5544f701';
const MapURL = 'http://api.openweathermap.org/data/2.5/weather';

@LazySingleton(as: ApiService)
class ApiServiceImpl extends ApiService {

  @override
  Future<Either<Error, Weather>> getWeatherByLocationOpenWeather(Location location) async {
    http.Response response = await http.get(
        Uri.parse('$MapURL?lat=${location.latitude}&lon=${location
            .longitude}&appid=$apiKey&units=metric')
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      int temperature = decodedData['main']['temp'].toInt();
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];
      int minTemp = decodedData['main']['temp_min'].toInt();
      int maxTemp = decodedData['main']['temp_max'].toInt();
      int feelTemp = decodedData['main']['feels_like'].toInt();
      int humidity = decodedData['main']['humidity'].toInt();
      double wind = decodedData['wind']['speed'];
      int clouds = decodedData['clouds']['all'].toInt();
      int pressure = decodedData['main']['pressure'].toInt();
      Weather weather = Weather(
        temperature: temperature,
        condition: condition,
        cityName: cityName,
        minTemp: minTemp,
        maxTemp: maxTemp,
        feelTemp: feelTemp,
        humidity: humidity,
        wind: wind,
        clouds: clouds,
        pressure: pressure,
      );
      print('OpenWeather: \n${weather.toString()}\n');
      return right(weather);
    } else {
      return left(Error());
    }
  }

  @override
  Future<Either<Error, Weather>> getWeatherByCity(String cityName) async {
    http.Response response = await http.get(
        Uri.parse('$MapURL?q=$cityName&appid=$apiKey&units=metric'));
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      int temperature = decodedData['main']['temp'].toInt();
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];
      int minTemp = decodedData['main']['temp_min'].toInt();
      int maxTemp = decodedData['main']['temp_max'].toInt();
      int feelTemp = decodedData['main']['feels_like'].toInt();
      int humidity = decodedData['main']['humidity'].toInt();
      double wind = decodedData['wind']['speed'];
      int clouds = decodedData['clouds']['all'].toInt();
      int pressure = decodedData['main']['pressure'].toInt();
      Weather weather = Weather(
        temperature: temperature,
        condition: condition,
        cityName: cityName,
        minTemp: minTemp,
        maxTemp: maxTemp,
        feelTemp: feelTemp,
        humidity: humidity,
        wind: wind,
        clouds: clouds,
        pressure: pressure,
      );
      return right(weather);
    } else {
      return left(Error());
    }
  }

  @override
  Future<Either<Error, Weather>> getWeatherByLocationOpenMeteo(Location location) async {
    http.Response response = await http.get(
        Uri.parse('https://api.open-meteo.com/v1/forecast?latitude=${location.latitude}&longitude=${location.longitude}&current_weather=true&timezone=Europe%2FBerlin')
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      int temperature = decodedData['current_weather']['temperature'].toInt();
      double wind = decodedData['current_weather']['windspeed'];
      Weather weather = Weather(
        temperature: temperature,
        wind: wind,
      );
      print('OpenMeteo: \n${weather.toString()}\n');
      return right(weather);
    } else {
      return left(Error());
    }
  }

  @override
  Future<Either<Error, Weather>> getWeatherByLocationTomorrowApi(Location location) async {
    http.Response response = await http.get(
        Uri.parse('https://api.tomorrow.io/v4/timelines?location=${location.latitude},${location.longitude}&fields=temperature,temperatureApparent,windSpeed,humidity,pressureSurfaceLevel&timesteps=current&units=metric&apikey=mHgMhJCsft9Wismz8TCut3DTtpq3Esb4')
    );
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      int temperature = decodedData['data']['timelines'][0]['intervals'][0]['values']['temperature'].toInt();
      double wind = decodedData['data']['timelines'][0]['intervals'][0]['values']['windSpeed'];
      int humidity = decodedData['data']['timelines'][0]['intervals'][0]['values']['humidity'].toInt();
      int feelTemp = decodedData['data']['timelines'][0]['intervals'][0]['values']['temperatureApparent'].toInt();
      int pressure = decodedData['data']['timelines'][0]['intervals'][0]['values']['pressureSurfaceLevel'].toInt();
      Weather weather = Weather(
        temperature: temperature,
        wind: wind,
        humidity: humidity,
        feelTemp: feelTemp,
        pressure: pressure,
      );
      print('Tomorrow.io: \n${weather.toString()}\n');
      return right(weather);
    } else {
      return left(Error());
    }
  }
}
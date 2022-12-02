import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pogodynka/features/src/feature/home/bloc/home_bloc.dart';
import 'package:pogodynka/features/src/feature/home/view/home_view.dart';
import 'package:pogodynka/features/src/feature/home/widgets/city_weather_bottom_sheet.dart';
import 'package:pogodynka/features/src/injection/injection.dart';
import 'package:pogodynka/features/src/widgets/app_text_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _bloc = getIt.get();
  String cityName = '';

  @override
  void initState() {
    _bloc.add(const HomeEvent.initialize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Pogodynka'),
        backgroundColor: Color(0xFF243657),
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF243657),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              bloc: _bloc,
              builder: (context, state) {
                if (state.isLoading == true) {
                  return HomeView.empty();
                } else {
                  return HomeView(
                    cityName: state.weather!.cityName,
                    temperature: state.weather!.temperature,
                    minTemperature: state.weather!.minTemp,
                    maxTemperature: state.weather!.maxTemp,
                    feelTemperature: state.weather!.feelTemp,
                    icon: state.getWeatherIcon(state.weather!),
                    day: state.getDay(),
                    humidity: state.weather!.humidity,
                    wind: state.weather!.wind,
                    pressure: state.weather!.pressure,
                    clouds: state.weather!.clouds,
                    onCityPressed: _onCityPressed,
                    cityWeather: state.cityWeather,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onCityPressed() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (BuildContext context) {
          return CityWeatherBottomSheet(
            onCityNameChange: _onCityNameChanged,
            onCheckForCityPressed: _onCheckForCityPressed,
          );
        }
        );
  }

  void _onCityNameChanged(String value) => setState(() {
    cityName = value;
  });

  void _onCheckForCityPressed(){
    _bloc.add(HomeEvent.getCityWeather(cityName));
    Navigator.pop(context);
  }
}


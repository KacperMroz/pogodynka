import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/feature/home/bloc/home_bloc.dart';
import 'package:pogodynka/features/src/injection/injection.dart';
import 'package:pogodynka/services/models/location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.location}) : super(key: key);

  final Location location;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _bloc = getIt.get();

  @override
  void initState() {
    _bloc.add(const HomeEvent.initialize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () async{
                      _onPressed();
                    },
                    child: const Icon(
                      Icons.near_me,
                      size: 50.0,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                    },
                    child: const Icon(
                      Icons.location_city,
                      size: 50.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      // '${widget.location.longitude} ${widget.location.latitude}'
                      '${_bloc.state.weather?.temperature}°',
                      style: TextStyle(
                        fontFamily: 'Spartan MB',
                        fontSize: 100.0,
                      ),
                    ),
                    // Text(
                    //   weatherIcon,
                    //   style: kConditionTextStyle,
                    // ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'sun in Cracow',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Spartan MB',
                    fontSize: 50.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPressed(){
    print('${widget.location.latitude} ${widget.location.longitude}');
    print('${_bloc.state.weather!.temperature}');
  }
}

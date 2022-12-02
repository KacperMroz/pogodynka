import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pogodynka/features/src/feature/home/view/home_page.dart';
import 'package:pogodynka/features/src/feature/splash/bloc/splash_bloc.dart';
import 'package:pogodynka/features/src/feature/splash/view/splash_view.dart';
import 'package:pogodynka/features/src/injection/injection.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc _bloc = getIt.get();

  @override
  void initState() {
    _bloc.add(const SplashEvent.initialize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state.isLoading == false){
            return HomePage();
          }
          return const SplashView();
        }
    );
  }
}

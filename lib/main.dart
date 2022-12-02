import 'package:flutter/material.dart';
import 'package:pogodynka/app/app.dart';
import 'package:pogodynka/features/src/injection/injection.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Pogodynka());
}
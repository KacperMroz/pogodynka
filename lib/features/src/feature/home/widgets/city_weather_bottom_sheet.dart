import 'package:flutter/material.dart';
import 'package:pogodynka/features/src/widgets/app_text_input.dart';

class CityWeatherBottomSheet extends StatelessWidget {
  const CityWeatherBottomSheet({
    Key? key,
    required this.onCityNameChange,
    required this.onCheckForCityPressed,
  }) : super(key: key);

  final Function(String value) onCityNameChange;
  final VoidCallback onCheckForCityPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          AppTextInput(
            labelText: 'Miasto',
            onChanged: onCityNameChange,
            hintText: 'Podaj nazwe miasta',
          ),
          SizedBox(height: 25,),
          ElevatedButton(
              onPressed: onCheckForCityPressed,
              child: Text('Sprawdź')
          ),
        ],
      ),
    );
  }
}